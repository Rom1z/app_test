.class Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget p1, p1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 6

    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5c

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->remove()Ljava/lang/Object;

    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    invoke-static {v0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    :goto_1b
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v0, v2, :cond_3a

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v3, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v4, v4, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v2, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    goto :goto_1b

    :cond_3a
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    return-void

    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
