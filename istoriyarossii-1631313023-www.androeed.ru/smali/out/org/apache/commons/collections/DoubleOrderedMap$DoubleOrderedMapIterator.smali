.class abstract Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
.super Ljava/lang/Object;
.source "DoubleOrderedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/DoubleOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DoubleOrderedMapIterator"
.end annotation


# instance fields
.field private expectedModifications:I

.field private iteratorType:I

.field protected lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private nextNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private final synthetic this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    iput p2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->iteratorType:I

    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->expectedModifications:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$2300(Lorg/apache/commons/collections/DoubleOrderedMap;)[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    iget p2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->iteratorType:I

    aget-object p1, p1, p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$2400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->nextNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-void
.end method


# virtual methods
.method protected abstract doGetNext()Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->nextNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->nextNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->expectedModifications:I

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->nextNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    iget v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->iteratorType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$2500(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->nextNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    invoke-virtual {p0}, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->doGetNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_21
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_27
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->expectedModifications:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->expectedModifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->expectedModifications:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-void

    :cond_1f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
