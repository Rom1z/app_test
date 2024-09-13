.class public abstract Lorg/apache/commons/collections/map/AbstractReferenceMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2


# instance fields
.field protected keyType:I

.field protected purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field protected valueType:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(IIIFZ)V
    .registers 6

    invoke-direct {p0, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    const-string p3, "keyType"

    invoke-static {p3, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    const-string p3, "valueType"

    invoke-static {p3, p2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    iput p2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    iput-boolean p5, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method private static verify(Ljava/lang/String;I)V
    .registers 3

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-gt p1, v0, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " must be HARD, SOFT, WEAK."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    :goto_3
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return v0

    :cond_b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .registers 12

    new-instance v6, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->init()V

    new-array v0, v0, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    :goto_23
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length p1, p1

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->calculateThreshold(IF)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->threshold:I

    return-void

    :cond_35
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    return-object p1
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_9
    if-nez p2, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_10
    xor-int/2addr p1, v0

    return p1
.end method

.method protected init()V
    .registers 2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_a

    check-cast p2, Ljava/lang/ref/Reference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    :cond_a
    if-eq p1, p2, :cond_15

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_6

    :cond_12
    return-void
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->hashIndex(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_10
    if-eqz v1, :cond_35

    move-object v3, v1

    check-cast v3, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v3, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v3

    if-eqz v3, :cond_2f

    if-nez v2, :cond_24

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object v1, p1, v0

    goto :goto_28

    :cond_24
    iget-object p1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object p1, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    :goto_28
    iget p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size:I

    return-void

    :cond_2f
    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_10

    :cond_35
    return-void
.end method

.method protected purgeBeforeRead()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge()V

    return-void
.end method

.method protected purgeBeforeWrite()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge()V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "null keys not allowed"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "null values not allowed"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeWrite()V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeWrite()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    return-object v0
.end method
