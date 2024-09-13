.class public Lorg/apache/commons/collections/map/AbstractLinkedMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;
    }
.end annotation


# instance fields
.field protected transient header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method protected constructor <init>(IFI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IFI)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    return-void
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    :cond_5
    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v1, :cond_25

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    return v0

    :cond_12
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    :cond_14
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v1, v2, :cond_25

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v0

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .registers 6

    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method protected entryAfter(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .registers 2

    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object p1
.end method

.method protected entryBefore(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .registers 2

    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object p1
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getEntry(I)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .registers 5

    const-string v0, "Index "

    if-ltz p1, :cond_45

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    if-ge p1, v1, :cond_26

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1a

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p1, :cond_25

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1a
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    :goto_1e
    if-le v1, p1, :cond_25

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_25
    return-object v0

    :cond_26
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " is invalid for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " is less than zero"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected init()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v0, v0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-void
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0

    :cond_7
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eqz p1, :cond_16

    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v1, :cond_f

    goto :goto_16

    :cond_f
    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->size:I

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0

    :cond_7
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eqz p1, :cond_16

    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v1, :cond_f

    goto :goto_16

    :cond_f
    iget-object p1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method protected removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-void
.end method
