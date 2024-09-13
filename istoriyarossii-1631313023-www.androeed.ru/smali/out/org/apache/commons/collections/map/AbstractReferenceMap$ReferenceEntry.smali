.class public Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReferenceEntry"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget p2, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p0, p2, p4, p3}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p0, p1, p5, p3}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_32

    if-nez p1, :cond_19

    goto :goto_32

    :cond_19
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_f
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    :goto_11
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_f
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    :goto_11
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_43

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez p1, :cond_2c

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_2c
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez p1, :cond_3a

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_43

    :cond_3a
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-boolean p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    :cond_43
    :goto_43
    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v1, :cond_11

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_11
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->hashCode:I

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected toReference(ILjava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    new-instance p1, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_1a
    new-instance p1, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    :cond_26
    return-object p2
.end method
