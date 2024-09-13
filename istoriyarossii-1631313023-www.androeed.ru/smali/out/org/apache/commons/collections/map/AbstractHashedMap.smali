.class public Lorg/apache/commons/collections/map/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$Values;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object;

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field protected transient data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

.field protected transient entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

.field protected transient keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

.field protected transient loadFactor:F

.field protected transient modCount:I

.field protected transient size:I

.field protected transient threshold:I

.field protected transient values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method protected constructor <init>(IF)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2d

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_25

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25

    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    new-array p1, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    return-void

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Load factor must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial capacity must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(IFI)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    new-array p1, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput p3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V

    iget p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->checkCapacity()V

    return-void
.end method

.method protected calculateNewCapacity(I)I
    .registers 4

    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_5

    goto :goto_f

    :cond_5
    const/4 v1, 0x1

    :goto_6
    if-ge v1, p1, :cond_b

    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    if-le v1, v0, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    return v0
.end method

.method protected calculateThreshold(IF)I
    .registers 3

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method protected checkCapacity()V
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_12

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->ensureCapacity(I)V

    :cond_12
    return-void
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_13

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    invoke-virtual {v1, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V
    :try_end_1f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_11
    if-eqz v1, :cond_24

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_21

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_11

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length p1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p1, :cond_3a

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v2

    :goto_e
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_17

    return v1

    :cond_17
    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_e

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_3a

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v4, v4, v3

    :goto_27
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    return v1

    :cond_34
    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_27

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3a
    return v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .registers 6

    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected destroyEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    new-array v0, v0, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v1, :cond_2e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_14

    :cond_29
    return-void
.end method

.method protected ensureCapacity(I)V
    .registers 9

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v0

    if-gt p1, v1, :cond_6

    return-void

    :cond_6
    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v2, :cond_17

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    new-array p1, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_4a

    :cond_17
    new-array v2, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_40

    aget-object v3, v0, v1

    if-eqz v3, :cond_3d

    const/4 v4, 0x0

    aput-object v4, v0, v1

    :goto_2a
    iget-object v4, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget v5, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v5, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v5

    aget-object v6, v2, v5

    iput-object v6, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object v3, v2, v5

    if-nez v4, :cond_3b

    goto :goto_3d

    :cond_3b
    move-object v3, v4

    goto :goto_2a

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_40
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    :goto_4a
    return-void
.end method

.method protected entryHashCode(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)I
    .registers 2

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    return p1
.end method

.method protected entryKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object p1
.end method

.method protected entryNext(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .registers 2

    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    :cond_1b
    :try_start_1b
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_38

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_37

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_37
    return v2

    :cond_38
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_40} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_40} :catch_44

    if-nez v3, :cond_1b

    return v2

    :cond_43
    return v0

    :catch_44
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_11
    if-eqz v1, :cond_27

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_24

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_24
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_11

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_11
    if-eqz v1, :cond_23

    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_20

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return-object v1

    :cond_20
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_11

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hash(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 v0, p1, 0x9

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    return p1
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_15
    return v1
.end method

.method protected hashIndex(II)I
    .registers 3

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    return p1
.end method

.method protected init()V
    .registers 1

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    return-object v0

    :cond_7
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_13
    if-eqz v2, :cond_2c

    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_29

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    :cond_29
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_13

    :cond_2c
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_39
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_15
    if-eqz v2, :cond_31

    iget v5, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_2b

    iget-object v5, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

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

.method protected removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .registers 4

    if-nez p3, :cond_9

    iget-object p3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object p1, p3, p2

    goto :goto_d

    :cond_9
    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object p1, p3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    :goto_d
    return-void
.end method

.method protected removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .registers 5

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    iget p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->destroyEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-void
.end method

.method protected reuseEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object p2, v0, p2

    iput-object p2, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput p3, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    iput-object p4, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    iput-object p5, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v1

    const/16 v2, 0x20

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    :cond_23
    :goto_23
    if-eqz v3, :cond_4f

    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_32

    move-object v3, v5

    :cond_32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v4, p0, :cond_3d

    move-object v4, v5

    :cond_3d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_4f
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    return-object v0
.end method
