.class public Lorg/apache/commons/collections/functors/InstantiateTransformer;
.super Ljava/lang/Object;
.source "InstantiateTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

.field static synthetic class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x348bf47fa486d03bL


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

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

.method public static getInstance([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .registers 4

    if-nez p0, :cond_4

    if-nez p1, :cond_11

    :cond_4
    if-eqz p0, :cond_8

    if-eqz p1, :cond_11

    :cond_8
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter types must match the arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    if-eqz p0, :cond_35

    array-length v0, p0

    if-nez v0, :cond_1f

    goto :goto_35

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    check-cast p0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/InstantiateTransformer;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    :cond_35
    :goto_35
    sget-object p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.InstantiateTransformer"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

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

    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.InstantiateTransformer"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_28

    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "InstantiateTransformer: Input object was not an instanceof Class, it was a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_15

    const-string p1, "null object"

    goto :goto_1d

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    check-cast p1, Ljava/lang/Class;

    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_36} :catch_52
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_36} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_36} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_36} :catch_37

    return-object p1

    :catch_37
    move-exception p1

    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "InstantiateTransformer: Constructor threw an exception"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_40
    move-exception p1

    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "InstantiateTransformer: Constructor must be public"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_49
    move-exception p1

    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "InstantiateTransformer: InstantiationException"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_52
    new-instance p1, Lorg/apache/commons/collections/FunctorException;

    const-string v0, "InstantiateTransformer: The constructor must exist and be public "

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
