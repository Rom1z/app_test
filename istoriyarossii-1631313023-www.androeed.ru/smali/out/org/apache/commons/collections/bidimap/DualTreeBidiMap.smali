.class public Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.source "DualTreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBidiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;,
        Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x290a0955b1151L


# instance fields
.field protected final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    check-cast p1, Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

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

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/OrderedBidiMap;

    return-object v0
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SortedBidiMap;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/apache/commons/collections/OrderedMap;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3c
    return-object v1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/apache/commons/collections/OrderedMap;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    return-object v1

    :cond_2d
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method
