.class public Lorg/apache/commons/collections/functors/CloneTransformer;
.super Ljava/lang/Object;
.source "CloneTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Transformer;

.field static synthetic class$org$apache$commons$collections$functors$CloneTransformer:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x71a4421bc4cbe9d7L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/functors/CloneTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/CloneTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static getInstance()Lorg/apache/commons/collections/Transformer;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->class$org$apache$commons$collections$functors$CloneTransformer:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.CloneTransformer"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/CloneTransformer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->class$org$apache$commons$collections$functors$CloneTransformer:Ljava/lang/Class;

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

    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->class$org$apache$commons$collections$functors$CloneTransformer:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.CloneTransformer"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/CloneTransformer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->class$org$apache$commons$collections$functors$CloneTransformer:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-static {p1}, Lorg/apache/commons/collections/functors/PrototypeFactory;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
