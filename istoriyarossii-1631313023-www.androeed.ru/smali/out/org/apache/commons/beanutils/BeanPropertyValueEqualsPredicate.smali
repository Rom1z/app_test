.class public Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;
.super Ljava/lang/Object;
.source "BeanPropertyValueEqualsPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;


# instance fields
.field private ignoreNull:Z

.field private final log:Lorg/apache/commons/logging/Log;

.field private propertyName:Ljava/lang/String;

.field private propertyValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyValue:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->ignoreNull:Z

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "propertyName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->evaluateValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_65

    :catch_d
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_20
    throw v0

    :catch_21
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception occurred in property\'s getter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_34
    throw v0

    :catch_35
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to access the property provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_48
    throw v0

    :catch_49
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->ignoreNull:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Problem during evaluation. Null value encountered in property path..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_65
    return p1

    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Problem during evaluation. Null value encountered in property path..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_78

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_78
    throw v0
.end method

.method protected evaluateValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->propertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isIgnoreNull()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueEqualsPredicate;->ignoreNull:Z

    return v0
.end method
