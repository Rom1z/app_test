.class public Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;
.super Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;
.source "DefaultKeyValue.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .registers 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .registers 3

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    goto :goto_27

    :cond_19
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :goto_27
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_34

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_44

    :cond_34
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_11
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    xor-int/2addr v0, v1

    return v0
.end method

.method public setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eq p1, p0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->key:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->key:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DefaultKeyValue may not contain itself as a key."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eq p1, p0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->value:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DefaultKeyValue may not contain itself as a value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMapEntry()Ljava/util/Map$Entry;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;-><init>(Lorg/apache/commons/collections/KeyValue;)V

    return-object v0
.end method
