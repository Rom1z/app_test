.class public Lorg/apache/commons/collections/FactoryUtils;
.super Ljava/lang/Object;
.source "FactoryUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/functors/ConstantFactory;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionFactory()Lorg/apache/commons/collections/Factory;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionFactory;->INSTANCE:Lorg/apache/commons/collections/Factory;

    return-object v0
.end method

.method public static instantiateFactory(Ljava/lang/Class;)Lorg/apache/commons/collections/Factory;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;

    move-result-object p0

    return-object p0
.end method

.method public static instantiateFactory(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InstantiateFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;

    move-result-object p0

    return-object p0
.end method

.method public static nullFactory()Lorg/apache/commons/collections/Factory;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    return-object v0
.end method

.method public static prototypeFactory(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;

    move-result-object p0

    return-object p0
.end method
