.class public Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;
.super Ljava/lang/Object;
.source "BeanPropertyValueChangeClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;


# instance fields
.field private ignoreNull:Z

.field private final log:Lorg/apache/commons/logging/Log;

.field private propertyName:Ljava/lang/String;

.field private propertyValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "propertyName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_7} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_7} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_5f

    :catch_8
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1b
    throw v0

    :catch_1c
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception occurred in property\'s getter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2f
    throw v0

    :catch_30
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to access the property provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_43
    throw v0

    :catch_44
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Unable to execute Closure. Null value encountered in property path..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :goto_5f
    return-void

    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to execute Closure. Null value encountered in property path..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_72
    throw v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isIgnoreNull()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    return v0
.end method
