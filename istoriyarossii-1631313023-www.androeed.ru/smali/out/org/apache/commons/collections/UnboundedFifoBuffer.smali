.class public Lorg/apache/commons/collections/UnboundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# instance fields
.field protected m_buffer:[Ljava/lang/Object;

.field protected m_head:I

.field protected m_tail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    if-lez p1, :cond_11

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    iput p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_9
    return p1
.end method

.method private increment(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    :cond_8
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 9

    const-string v0, "Attempted to add null object to buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_37

    array-length v0, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    const/4 v3, 0x0

    :cond_1b
    :goto_1b
    iget v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    if-eq v2, v5, :cond_31

    iget-object v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    aget-object v6, v5, v2

    aput-object v6, v0, v3

    const/4 v6, 0x0

    aput-object v6, v5, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    array-length v5, v5

    if-ne v2, v5, :cond_1b

    const/4 v2, 0x0

    goto :goto_1b

    :cond_31
    iput-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    iput v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    :cond_37
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    array-length p1, v0

    if-lt v2, p1, :cond_45

    iput v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    :cond_45
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

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

    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->size()I

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

    new-instance v0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/UnboundedFifoBuffer;)V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1b

    const/4 v3, 0x0

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    array-length v0, v0

    if-lt v1, v0, :cond_1b

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    :cond_1b
    return-object v2

    :cond_1c
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    if-ge v0, v1, :cond_c

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_e

    :cond_c
    sub-int v2, v0, v1

    :goto_e
    return v2
.end method
