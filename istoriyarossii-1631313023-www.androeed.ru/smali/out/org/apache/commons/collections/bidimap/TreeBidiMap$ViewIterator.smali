.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewIterator"
.end annotation


# instance fields
.field protected final dataType:I

.field private expectedModifications:I

.field protected lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field protected final main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

.field protected nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field protected final orderType:I

.field protected previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iput p2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-void
.end method


# virtual methods
.method protected doGetData()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    new-instance v0, Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_21
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-object v0

    :cond_24
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2b
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->doGetData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    :cond_20
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->doGetData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_33
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_39
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_33

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    goto :goto_3d

    :cond_33
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    :goto_3d
    return-void

    :cond_3e
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
