.class public Lorg/apache/commons/collections/collection/CompositeCollection;
.super Ljava/lang/Object;
.source "CompositeCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;
    }
.end annotation


# instance fields
.field protected all:[Ljava/util/Collection;

.field protected mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->add(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->addAll(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addAll() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addComposited(Ljava/util/Collection;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method

.method public addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method

.method public addComposited([Ljava/util/Collection;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Collection;

    check-cast p1, [Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_15

    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public getCollections()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_16

    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_16
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    :cond_8
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>()V

    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->remove(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_e
    if-ltz v0, :cond_23

    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v4, v4, v0

    invoke-interface {v4, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v3, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v3, 0x1

    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_23
    return v3
.end method

.method public removeComposited(Ljava/util/Collection;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Collection;

    check-cast p1, [Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ltz v0, :cond_1c

    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v4, v4, v0

    invoke-interface {v4, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz v3, :cond_16

    goto :goto_18

    :cond_16
    const/4 v3, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v3, 0x1

    :goto_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1c
    return v3
.end method

.method public setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    return-void
.end method

.method public size()I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_6
    if-ltz v0, :cond_14

    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v0

    array-length v1, p1

    if-lt v1, v0, :cond_8

    goto :goto_18

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :goto_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    iget-object v3, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v4, v3

    if-ge v1, v4, :cond_38

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    move v2, v4

    goto :goto_25

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_38
    array-length v1, p1

    if-le v1, v0, :cond_3e

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3e
    return-object p1
.end method

.method public toCollection()Ljava/util/Collection;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
