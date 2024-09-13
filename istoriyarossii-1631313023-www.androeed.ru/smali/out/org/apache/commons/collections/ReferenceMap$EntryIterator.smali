.class Lorg/apache/commons/collections/ReferenceMap$EntryIterator;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    array-length v0, v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    return-void
.end method

.method private checkMod()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

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
.method public hasNext()Z
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    :cond_3
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    :goto_d
    if-nez v0, :cond_1c

    if-lez v1, :cond_1c

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_d

    :cond_1c
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    if-nez v0, :cond_29

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    :cond_29
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_3

    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_16

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    return-object v0
.end method

.method public remove()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
