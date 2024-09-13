.class public abstract Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;
.source "AbstractMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    goto :goto_27

    :cond_19
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :goto_27
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_34

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_44

    :cond_34
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_11
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
