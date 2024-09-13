.class public Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3055f5f8fc9939abL


# instance fields
.field protected transient buffer:[Ljava/lang/Object;

.field protected transient head:I

.field protected transient tail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    if-lez p1, :cond_11

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_9
    return p1
.end method

.method private increment(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    :cond_8
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

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

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1c
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 9

    const-string v0, "Attempted to add null object to buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_35

    array-length v0, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    iget v5, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v2, v5, :cond_2f

    iget-object v5, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v6, v5, v2

    aput-object v6, v0, v4

    const/4 v6, 0x0

    aput-object v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v2

    goto :goto_1b

    :cond_2f
    iput-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iput v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    :cond_35
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    aput-object p1, v0, v2

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    aget-object v0, v0, v1

    return-object v0

    :cond_d
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;)V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    :cond_17
    return-object v2

    :cond_18
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ge v0, v1, :cond_c

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_e

    :cond_c
    sub-int v2, v0, v1

    :goto_e
    return v2
.end method
