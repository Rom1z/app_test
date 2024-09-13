.class public final Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;
.super Ljava/lang/Object;
.source "UnmodifiableMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private iterator:Lorg/apache/commons/collections/MapIterator;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/MapIterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections/MapIterator;

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;
    .registers 2

    if-eqz p0, :cond_d

    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;-><init>(Lorg/apache/commons/collections/MapIterator;)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "MapIterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setValue() is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
