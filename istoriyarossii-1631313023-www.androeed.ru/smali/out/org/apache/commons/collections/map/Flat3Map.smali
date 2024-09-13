.class public Lorg/apache/commons/collections/map/Flat3Map;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/Flat3Map$ValuesIterator;,
        Lorg/apache/commons/collections/map/Flat3Map$Values;,
        Lorg/apache/commons/collections/map/Flat3Map$KeySetIterator;,
        Lorg/apache/commons/collections/map/Flat3Map$KeySet;,
        Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;,
        Lorg/apache/commons/collections/map/Flat3Map$EntrySet;,
        Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cff0b811e8e7b68L


# instance fields
.field private transient delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

.field private transient hash1:I

.field private transient hash2:I

.field private transient hash3:I

.field private transient key1:Ljava/lang/Object;

.field private transient key2:Ljava/lang/Object;

.field private transient key3:Ljava/lang/Object;

.field private transient size:I

.field private transient value1:Ljava/lang/Object;

.field private transient value2:Ljava/lang/Object;

.field private transient value3:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/Flat3Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/map/Flat3Map;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    return-object p0
.end method

.method private convertToMap()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    goto :goto_2b

    :cond_12
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    :cond_10
    :goto_10
    if-lez v0, :cond_20

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    :cond_23
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    goto :goto_20

    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    :goto_20
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/Flat3Map;

    iget-object v1, v0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/map/HashedMap;

    iput-object v1, v0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-object v0

    :catch_13
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_26

    iget p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_21

    if-eq p1, v1, :cond_1c

    if-eq p1, v0, :cond_17

    goto :goto_5e

    :cond_17
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_1c

    return v2

    :cond_1c
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_21

    return v2

    :cond_21
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_5e

    return v2

    :cond_26
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v3, :cond_5e

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_51

    if-eq v4, v1, :cond_44

    if-eq v4, v0, :cond_37

    goto :goto_5e

    :cond_37
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_44

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    return v2

    :cond_44
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_51

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    return v2

    :cond_51
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_5e

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    return v2

    :cond_5e
    :goto_5e
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_26

    iget p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_21

    if-eq p1, v1, :cond_1c

    if-eq p1, v0, :cond_17

    goto :goto_4a

    :cond_17
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez p1, :cond_1c

    return v2

    :cond_1c
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez p1, :cond_21

    return v2

    :cond_21
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez p1, :cond_4a

    return v2

    :cond_26
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq v3, v2, :cond_41

    if-eq v3, v1, :cond_38

    if-eq v3, v0, :cond_2f

    goto :goto_4a

    :cond_2f
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return v2

    :cond_38
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    return v2

    :cond_41
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    return v2

    :cond_4a
    :goto_4a
    const/4 p1, 0x0

    return p1
.end method

.method protected createDelegateMap()Lorg/apache/commons/collections/map/AbstractHashedMap;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/HashedMap;-><init>()V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    return v2

    :cond_13
    check-cast p1, Ljava/util/Map;

    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v1, :cond_82

    if-eq v1, v0, :cond_65

    const/4 v3, 0x2

    if-eq v1, v3, :cond_48

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2b

    goto :goto_82

    :cond_2b
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v3, :cond_41

    if-eqz v1, :cond_48

    goto :goto_47

    :cond_41
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    :goto_47
    return v2

    :cond_48
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_5e

    if-eqz v1, :cond_65

    goto :goto_64

    :cond_5e
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    :goto_64
    return v2

    :cond_65
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    return v2

    :cond_6e
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v1, :cond_7b

    if-eqz p1, :cond_82

    goto :goto_81

    :cond_7b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    :goto_81
    return v2

    :cond_82
    :goto_82
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2c

    iget p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_25

    if-eq p1, v1, :cond_1e

    if-eq p1, v0, :cond_17

    goto :goto_6a

    :cond_17
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_1e

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    :cond_1e
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_25

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    :cond_25
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_6a

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    :cond_2c
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v3, :cond_6a

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_5b

    if-eq v4, v1, :cond_4c

    if-eq v4, v0, :cond_3d

    goto :goto_6a

    :cond_3d
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_4c

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    :cond_4c
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_5b

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    :cond_5b
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_6a

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    :cond_6a
    :goto_6a
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0

    :cond_9
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    goto :goto_44

    :cond_16
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_22
    xor-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_2e

    const/4 v3, 0x0

    goto :goto_32

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_32
    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_41
    xor-int/2addr v1, v2

    add-int v2, v0, v1

    :goto_44
    return v2
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$KeySet;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0

    :cond_9
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-nez v0, :cond_10

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    return-object v0

    :cond_10
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_32

    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq v3, v2, :cond_29

    if-eq v3, v1, :cond_20

    if-eq v3, v0, :cond_17

    goto :goto_76

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_20

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    :cond_20
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_29

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    :cond_29
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_76

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    :cond_32
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v3, :cond_76

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_65

    if-eq v4, v1, :cond_54

    if-eq v4, v0, :cond_43

    goto :goto_76

    :cond_43
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_54

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    :cond_54
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_65

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    :cond_65
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_76

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    :cond_76
    :goto_76
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_a5

    if-eq v0, v2, :cond_97

    if-eq v0, v1, :cond_89

    invoke-direct {p0}, Lorg/apache/commons/collections/map/Flat3Map;->convertToMap()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_89
    if-nez p1, :cond_8c

    goto :goto_90

    :cond_8c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_90
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_b2

    :cond_97
    if-nez p1, :cond_9a

    goto :goto_9e

    :cond_9a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_9e
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_b2

    :cond_a5
    if-nez p1, :cond_a8

    goto :goto_ac

    :cond_a8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_ac
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    :goto_b2
    iget p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object v3
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_f
    const/4 v1, 0x4

    if-ge v0, v1, :cond_32

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_32
    invoke-direct {p0}, Lorg/apache/commons/collections/map/Flat3Map;->convertToMap()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    :cond_3a
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_97

    if-eq v0, v3, :cond_88

    if-eq v0, v4, :cond_5f

    if-eq v0, v2, :cond_1d

    goto/16 :goto_157

    :cond_1d
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_2c

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_45

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object v0

    :cond_45
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_5e

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object v0

    :cond_5e
    return-object v1

    :cond_5f
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_6e

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_6e
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_87

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object v0

    :cond_87
    return-object v1

    :cond_88
    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_157

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_97
    if-lez v0, :cond_157

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v6, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-eq v6, v3, :cond_140

    if-eq v6, v4, :cond_105

    if-eq v6, v2, :cond_a7

    goto/16 :goto_157

    :cond_a7
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v2, v0, :cond_be

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_be
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_e1

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_e1
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_104

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_104

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_104
    return-object v1

    :cond_105
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_11c

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_11c
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_13f

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13f

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_13f
    return-object v1

    :cond_140
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_157

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_157

    iget-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return-object p1

    :cond_157
    :goto_157
    return-object v1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0

    :cond_9
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-nez v0, :cond_10

    const-string v0, "{}"

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    const/4 v2, 0x1

    const/16 v3, 0x3d

    const-string v4, "(this Map)"

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x2

    const/16 v5, 0x2c

    if-eq v1, v2, :cond_44

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2e

    goto :goto_6e

    :cond_2e
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-ne v1, p0, :cond_33

    move-object v1, v4

    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-ne v1, p0, :cond_3e

    move-object v1, v4

    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_44
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-ne v1, p0, :cond_49

    move-object v1, v4

    :cond_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-ne v1, p0, :cond_54

    move-object v1, v4

    :cond_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5a
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-ne v1, p0, :cond_5f

    move-object v1, v4

    :cond_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-ne v1, p0, :cond_6a

    goto :goto_6b

    :cond_6a
    move-object v4, v1

    :goto_6b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_6e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$Values;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    return-object v0
.end method
