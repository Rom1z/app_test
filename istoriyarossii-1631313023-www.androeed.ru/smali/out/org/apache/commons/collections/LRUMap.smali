.class public Lorg/apache/commons/collections/LRUMap;
.super Lorg/apache/commons/collections/SequencedHashMap;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1e7ed9cc8d43a4bbL


# instance fields
.field private maximumSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/LRUMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    iput p1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/LRUMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/LRUMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMaximumSize()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    return v0
.end method

.method protected processRemovedLRU(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    if-lt v0, v1, :cond_11

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/LRUMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->removeLRU()V

    :cond_11
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected removeLRU()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/LRUMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/LRUMap;->processRemovedLRU(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaximumSize(I)V
    .registers 3

    iput p1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->size()I

    move-result v0

    if-le v0, p1, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->removeLRU()V

    goto :goto_2

    :cond_c
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-super {p0, v1}, Lorg/apache/commons/collections/SequencedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_14

    :cond_29
    return-void
.end method
