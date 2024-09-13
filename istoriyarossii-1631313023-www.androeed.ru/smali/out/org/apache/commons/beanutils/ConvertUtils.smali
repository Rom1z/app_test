.class public Lorg/apache/commons/beanutils/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deregister()V
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->deregister()V

    return-void
.end method

.method public static deregister(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->deregister(Ljava/lang/Class;)V

    return-void
.end method

.method public static getDefaultBoolean()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultBoolean()Z

    move-result v0

    return v0
.end method

.method public static getDefaultByte()B
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultByte()B

    move-result v0

    return v0
.end method

.method public static getDefaultCharacter()C
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultCharacter()C

    move-result v0

    return v0
.end method

.method public static getDefaultDouble()D
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultFloat()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultFloat()F

    move-result v0

    return v0
.end method

.method public static getDefaultInteger()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultInteger()I

    move-result v0

    return v0
.end method

.method public static getDefaultLong()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultShort()S
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getDefaultShort()S

    move-result v0

    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p0

    return-object p0
.end method

.method public static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_40

    :cond_9
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_10

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_10
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_17

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_17
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1e

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_1e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_25

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_25
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2c

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_2c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_33

    const-class p0, Ljava/lang/Short;

    return-object p0

    :cond_33
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3a

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_3a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_40

    const-class p0, Ljava/lang/Character;

    :cond_40
    :goto_40
    return-object p0
.end method

.method public static register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/Converter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public static setDefaultBoolean(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultBoolean(Z)V

    return-void
.end method

.method public static setDefaultByte(B)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultByte(B)V

    return-void
.end method

.method public static setDefaultCharacter(C)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultCharacter(C)V

    return-void
.end method

.method public static setDefaultDouble(D)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultDouble(D)V

    return-void
.end method

.method public static setDefaultFloat(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultFloat(F)V

    return-void
.end method

.method public static setDefaultInteger(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultInteger(I)V

    return-void
.end method

.method public static setDefaultLong(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultLong(J)V

    return-void
.end method

.method public static setDefaultShort(S)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->setDefaultShort(S)V

    return-void
.end method
