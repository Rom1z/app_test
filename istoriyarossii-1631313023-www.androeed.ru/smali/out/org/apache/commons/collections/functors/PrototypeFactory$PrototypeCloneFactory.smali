.class Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeCloneFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4dc65f2a86ded103L


# instance fields
.field private transient iCloneMethod:Ljava/lang/reflect/Method;

.field private final iPrototype:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private findCloneMethod()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clone"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PrototypeCloneFactory: The clone method must exist and be public "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.collections.functors.PrototypeFactory$PrototypeCloneFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.collections.functors.PrototypeFactory$PrototypeCloneFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->findCloneMethod()V

    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "PrototypeCloneFactory: Clone method threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "PrototypeCloneFactory: Clone method must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
