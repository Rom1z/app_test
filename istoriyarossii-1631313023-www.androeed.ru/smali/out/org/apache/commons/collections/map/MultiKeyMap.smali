.class public Lorg/apache/commons/collections/map/MultiKeyMap;
.super Ljava/lang/Object;
.source "MultiKeyMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# instance fields
.field protected final map:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/collections/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/HashedMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/map/AbstractHashedMap;)Lorg/apache/commons/collections/map/MultiKeyMap;
    .registers 2

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-gtz v0, :cond_e

    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map must be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected checkKey(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "Key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of p1, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    if-eqz p1, :cond_a

    return-void

    :cond_a
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Key must be a MultiKey"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_24

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_21

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_24

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_21

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 13

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_2a

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_27

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_27
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 15

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_2b

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_28

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_27

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_24

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_24
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_27

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_24

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_24
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_2d

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_2a

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2a
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_13
    if-eqz v1, :cond_2e

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_2b

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2b
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_8
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_f
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_8
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_f
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_16
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_8
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_f
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_16
    if-eqz p4, :cond_1d

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1d
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_8
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_f
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_16
    if-eqz p4, :cond_1d

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1d
    if-eqz p5, :cond_24

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_24
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_32

    if-nez p2, :cond_18

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_32

    goto :goto_22

    :cond_18
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    :goto_22
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_2b

    if-nez p1, :cond_32

    goto :goto_33

    :cond_2b
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_42

    if-nez p2, :cond_18

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_42

    goto :goto_22

    :cond_18
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    :goto_22
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_2b

    if-nez p2, :cond_42

    goto :goto_31

    :cond_2b
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    :goto_31
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p4, :cond_3b

    if-nez p1, :cond_42

    goto :goto_43

    :cond_3b
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_52

    if-nez p2, :cond_18

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_52

    goto :goto_22

    :cond_18
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    :goto_22
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_2b

    if-nez p2, :cond_52

    goto :goto_31

    :cond_2b
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    :goto_31
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p4, :cond_3b

    if-nez p2, :cond_52

    goto :goto_41

    :cond_3b
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    :goto_41
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p5, :cond_4b

    if-nez p1, :cond_52

    goto :goto_53

    :cond_4b
    invoke-virtual {p5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_62

    if-nez p2, :cond_18

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_62

    goto :goto_22

    :cond_18
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    :goto_22
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_2b

    if-nez p2, :cond_62

    goto :goto_31

    :cond_2b
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    :goto_31
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p4, :cond_3b

    if-nez p2, :cond_62

    goto :goto_41

    :cond_3b
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    :goto_41
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p5, :cond_4b

    if-nez p2, :cond_62

    goto :goto_51

    :cond_4b
    invoke-virtual {p5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    :goto_51
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p6, :cond_5b

    if-nez p1, :cond_62

    goto :goto_63

    :cond_5b
    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_13
    if-eqz v2, :cond_2c

    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_29

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    :cond_29
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2c
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_13
    if-eqz v2, :cond_2c

    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_29

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    :cond_29
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2c
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_13
    if-eqz v2, :cond_32

    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_2f

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    :cond_2f
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_32
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object v7, p0

    move-object/from16 v8, p6

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v9, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v10

    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v10

    move-object v11, v0

    :goto_17
    if-eqz v11, :cond_39

    iget v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v9, :cond_36

    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v11}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, v11, v8}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object v0

    :cond_36
    iget-object v11, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_17

    :cond_39
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v11, Lorg/apache/commons/collections/keyvalue/MultiKey;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v10, v9, v11, v8}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_15
    if-eqz v2, :cond_31

    iget v5, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_2b

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    :cond_2b
    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_15

    :cond_31
    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_15
    if-eqz v2, :cond_31

    iget v5, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_2b

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    :cond_2b
    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_15

    :cond_31
    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v10, v3

    :goto_15
    if-eqz v2, :cond_36

    iget v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_31

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, v1, v10}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    :cond_31
    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v10, v2

    move-object v2, v4

    goto :goto_15

    :cond_36
    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object v7, p0

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v9

    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v9

    const/4 v10, 0x0

    move-object v11, v0

    move-object v12, v10

    :goto_17
    if-eqz v11, :cond_3c

    iget v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v8, :cond_37

    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {v11}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, v11, v9, v12}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object v0

    :cond_37
    iget-object v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v12, v11

    move-object v11, v0

    goto :goto_17

    :cond_3c
    return-object v10
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .registers 8

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_22

    if-nez v3, :cond_6

    goto :goto_28

    :cond_22
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_28
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_6

    :cond_2d
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v4, v5, :cond_6

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_23

    if-nez v4, :cond_6

    goto :goto_29

    :cond_23
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_29
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_32

    if-nez v3, :cond_6

    goto :goto_38

    :cond_32
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_38
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_6

    :cond_3d
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lt v4, v5, :cond_6

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_23

    if-nez v4, :cond_6

    goto :goto_29

    :cond_23
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_29
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_32

    if-nez v4, :cond_6

    goto :goto_38

    :cond_32
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_38
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_42

    if-nez v3, :cond_6

    goto :goto_48

    :cond_42
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_48
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_6

    :cond_4d
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lt v4, v5, :cond_6

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_23

    if-nez v4, :cond_6

    goto :goto_29

    :cond_23
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_29
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_32

    if-nez v4, :cond_6

    goto :goto_38

    :cond_32
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_38
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p3, :cond_42

    if-nez v4, :cond_6

    goto :goto_48

    :cond_42
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_48
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p4, :cond_52

    if-nez v3, :cond_6

    goto :goto_58

    :cond_52
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_58
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_6

    :cond_5d
    return v2
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
