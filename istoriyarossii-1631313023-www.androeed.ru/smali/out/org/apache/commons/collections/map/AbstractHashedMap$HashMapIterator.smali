.class public Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashMapIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
