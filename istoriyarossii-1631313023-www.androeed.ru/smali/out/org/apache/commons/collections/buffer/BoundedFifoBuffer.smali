.class public Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Lorg/apache/commons/collections/BoundedCollection;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4dc46c34fcb35909L


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-lez p1, :cond_14

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    return p0
.end method

.method static synthetic access$202(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I
    .registers 2

    iput p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_8

    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    add-int/lit8 p1, p1, -0x1

    :cond_8
    return p1
.end method

.method private increment(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-lt p1, v0, :cond_7

    const/4 p1, 0x0

    :cond_7
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

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-ne v0, p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-boolean p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-eqz p1, :cond_2c

    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    goto :goto_2e

    :cond_2c
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    :goto_2e
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->iterator()Ljava/util/Iterator;

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
    .registers 5

    const-string v0, "Attempted to add null object to buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    aput-object p1, v0, v1

    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-lt v2, p1, :cond_1a

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    :cond_1a
    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_23

    iput-boolean v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    :cond_23
    return v1

    :cond_24
    new-instance p1, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The buffer cannot hold more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " objects."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

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

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFull()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)V

    return-object v0
.end method

.method public maxSize()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1e

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_1c

    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    :cond_1c
    iput-boolean v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    :cond_1e
    return-object v2

    :cond_1f
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    if-ge v0, v1, :cond_b

    iget v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_1a

    :cond_b
    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    move v2, v0

    goto :goto_1a

    :cond_15
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1a

    :cond_18
    sub-int v2, v0, v1

    :goto_1a
    return v2
.end method
