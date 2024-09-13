.class public final Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "UnmodifiableBoundedCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;


# static fields
.field private static final serialVersionUID:J = -0x62b549d99a7f6feaL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/BoundedCollection;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/BoundedCollection;)Lorg/apache/commons/collections/BoundedCollection;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections/BoundedCollection;)V

    return-object v0
.end method

.method public static decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;
    .registers 3

    if-eqz p0, :cond_34

    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_20

    instance-of v1, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v1, :cond_c

    goto :goto_20

    :cond_c
    instance-of v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;

    if-eqz v1, :cond_15

    check-cast p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;

    iget-object p0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    goto :goto_1d

    :cond_15
    instance-of v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    if-eqz v1, :cond_20

    check-cast p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    iget-object p0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_20
    :goto_20
    instance-of v0, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v0, :cond_2c

    new-instance v0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;

    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections/BoundedCollection;)V

    return-object v0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The collection is not a bounded collection"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFull()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
