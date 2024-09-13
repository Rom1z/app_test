.class public Lorg/apache/commons/collections/ArrayStack;
.super Ljava/util/ArrayList;
.source "ArrayStack.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = 0x1d8f8fb5d72f1947L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public empty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-lez v0, :cond_d

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public peek(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-lez v0, :cond_d

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ArrayStack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public remove()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public search(Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1e

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_10

    if-eqz v2, :cond_18

    :cond_10
    if-eqz p1, :cond_19

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    const/4 p1, -0x1

    return p1
.end method
