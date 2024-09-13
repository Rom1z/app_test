.class public Lorg/apache/commons/collections/iterators/EntrySetMapIterator;
.super Ljava/lang/Object;
.source "EntrySetMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private canRemove:Z

.field private iterator:Ljava/util/Iterator;

.field private last:Ljava/util/Map$Entry;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MapIterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    const-string v0, "MapIterator[]"

    return-object v0
.end method
