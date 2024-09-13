.class public Lorg/apache/commons/collections/functors/InstantiateFactory;
.super Ljava/lang/Object;
.source "InstantiateFactory.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;
.implements Ljava/io/Serializable;


# static fields
.field static synthetic class$org$apache$commons$collections$functors$InstantiateFactory:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6b4e636198defb15L


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iClassToInstantiate:Ljava/lang/Class;

.field private transient iConstructor:Ljava/lang/reflect/Constructor;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    iput-object p3, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findConstructor()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InstantiateFactory: The constructor must exist and be public "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .registers 5

    if-eqz p0, :cond_3d

    if-nez p1, :cond_6

    if-nez p2, :cond_13

    :cond_6
    if-eqz p1, :cond_a

    if-eqz p2, :cond_13

    :cond_a
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter types must match the arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    if-eqz p1, :cond_37

    array-length v0, p1

    if-nez v0, :cond_21

    goto :goto_37

    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    :cond_37
    :goto_37
    new-instance p1, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-direct {p1, p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Class to instantiate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateFactory;->class$org$apache$commons$collections$functors$InstantiateFactory:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.InstantiateFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateFactory;->class$org$apache$commons$collections$functors$InstantiateFactory:Ljava/lang/Class;

    :cond_c
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

    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateFactory;->class$org$apache$commons$collections$functors$InstantiateFactory:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.InstantiateFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateFactory;->class$org$apache$commons$collections$functors$InstantiateFactory:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_f} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_f} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: Constructor threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: Constructor must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_22
    move-exception v0

    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: InstantiationException"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
