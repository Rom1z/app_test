.class public Lorg/apache/commons/collections/buffer/PriorityBuffer;
.super Ljava/util/AbstractCollection;
.source "PriorityBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xd

.field private static final serialVersionUID:J = 0x5fa2699a1d6fd278L


# instance fields
.field protected ascendingOrder:Z

.field protected comparator:Ljava/util/Comparator;

.field protected elements:[Ljava/lang/Object;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    if-lez p1, :cond_10

    iput-boolean p2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid capacity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4

    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .registers 4

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->isAtCapacity()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->grow()V

    :cond_9
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(Ljava/lang/Object;)V

    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(Ljava/lang/Object;)V

    :goto_14
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_9
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_c
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method protected grow()V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public isAscendingOrder()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    return v0
.end method

.method protected isAtCapacity()Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/PriorityBuffer;)V

    return-object v0
.end method

.method protected percolateDownMaxHeap(I)V
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_4
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v1, v2, :cond_2e

    if-eq v1, v2, :cond_1b

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1b

    move v1, v3

    :cond_1b
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_26

    goto :goto_2e

    :cond_26
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_4

    :cond_2e
    :goto_2e
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateDownMinHeap(I)V
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_4
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v1, v2, :cond_2e

    if-eq v1, v2, :cond_1b

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1b

    move v1, v3

    :cond_1b
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_26

    goto :goto_2e

    :cond_26
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_4

    :cond_2e
    :goto_2e
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMaxHeap(I)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_4
    const/4 v1, 0x1

    if-le p1, v1, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_4

    :cond_1b
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_4
    const/4 v1, 0x1

    if-le p1, v1, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_4

    :cond_1b
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v2

    if-eqz v3, :cond_23

    iget-boolean v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v1, :cond_20

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMinHeap(I)V

    goto :goto_23

    :cond_20
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMaxHeap(I)V

    :cond_23
    :goto_23
    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_c
    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_22

    if-eq v2, v1, :cond_18

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
