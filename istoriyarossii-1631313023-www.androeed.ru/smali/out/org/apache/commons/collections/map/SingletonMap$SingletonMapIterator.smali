.class Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonMapIterator"
.end annotation


# instance fields
.field private canGetSet:Z

.field private hasNext:Z

.field private final parent:Lorg/apache/commons/collections/map/SingletonMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/SingletonMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

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

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iput-boolean v1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_7

    const-string v0, "Iterator[]"

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
