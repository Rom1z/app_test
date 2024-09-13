.class public Lorg/apache/commons/collections/iterators/SingletonIterator;
.super Ljava/lang/Object;
.source "SingletonIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private beforeFirst:Z

.field private object:Ljava/lang/Object;

.field private final removeAllowed:Z

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/SingletonIterator;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->object:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removeAllowed:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->object:Ljava/lang/Object;

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removeAllowed:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    return-void
.end method
