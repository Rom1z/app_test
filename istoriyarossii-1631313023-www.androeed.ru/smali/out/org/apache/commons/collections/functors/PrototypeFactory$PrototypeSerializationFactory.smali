.class Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;
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
    name = "PrototypeSerializationFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78ce4155b63c4f51L


# instance fields
.field private final iPrototype:Ljava/io/Serializable;


# direct methods
.method private constructor <init>(Ljava/io/Serializable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Serializable;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.collections.functors.PrototypeFactory$PrototypeSerializationFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

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

    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.collections.functors.PrototypeFactory$PrototypeSerializationFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_1b} :catch_3e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_34
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2f

    :try_start_1b
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_2b
    .catchall {:try_start_1b .. :try_end_24} :catchall_48

    :try_start_24
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    :try_start_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2a

    :catch_2a
    return-object v1

    :catch_2b
    move-exception v1

    goto :goto_38

    :catch_2d
    move-exception v1

    goto :goto_42

    :catchall_2f
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_49

    :catch_34
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_38
    :try_start_38
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    invoke-direct {v3, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3e
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_42
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    invoke-direct {v3, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v1

    :goto_49
    if-eqz v2, :cond_4e

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_51

    :catch_51
    throw v1
.end method
