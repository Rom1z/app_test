.class Lorg/apache/commons/collections/buffer/PriorityBuffer$1;
.super Ljava/lang/Object;
.source "PriorityBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/PriorityBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 7

    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v4, v4, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-eqz v0, :cond_7c

    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v0, v2, :cond_7c

    const/4 v0, 0x0

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_53

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v2, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    aget-object v2, v2, v4

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v4, v4, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    div-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, v2, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_53
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-boolean v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v2, :cond_6b

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_65

    if-gez v0, :cond_65

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    goto :goto_7c

    :cond_65
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMinHeap(I)V

    goto :goto_7c

    :cond_6b
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_77

    if-lez v0, :cond_77

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    goto :goto_7c

    :cond_77
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMaxHeap(I)V

    :cond_7c
    :goto_7c
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    return-void

    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
