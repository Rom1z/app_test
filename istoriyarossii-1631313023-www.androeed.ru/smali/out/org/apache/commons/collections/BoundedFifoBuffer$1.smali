.class Lorg/apache/commons/collections/BoundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BoundedFifoBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    invoke-static {p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$100(Lorg/apache/commons/collections/BoundedFifoBuffer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    if-nez v0, :cond_11

    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v1

    if-eq v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 7

    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_81

    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->remove()Ljava/lang/Object;

    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    return-void

    :cond_15
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    :goto_1a
    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v3

    if-eq v0, v3, :cond_53

    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$500(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v3

    if-lt v0, v3, :cond_3e

    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v4}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v2

    aput-object v4, v3, v0

    const/4 v0, 0x0

    goto :goto_1a

    :cond_3e
    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v5}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_53
    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$202(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0, v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$102(Lorg/apache/commons/collections/BoundedFifoBuffer;Z)Z

    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    return-void

    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
