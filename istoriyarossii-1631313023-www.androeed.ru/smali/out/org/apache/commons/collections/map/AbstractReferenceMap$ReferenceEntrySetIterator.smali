.class Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceEntrySetIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field final parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

.field previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    return-void
.end method

.method private checkMod()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    :cond_3
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    :goto_d
    if-nez v0, :cond_1c

    if-lez v1, :cond_1c

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_d

    :cond_1c
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    if-nez v0, :cond_29

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    :cond_29
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_3

    :cond_44
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_16

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
