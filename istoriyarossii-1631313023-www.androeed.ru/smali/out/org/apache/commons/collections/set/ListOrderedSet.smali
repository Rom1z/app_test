.class public Lorg/apache/commons/collections/set/ListOrderedSet;
.super Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;
.source "ListOrderedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32c610905e312adL


# instance fields
.field protected final setOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decorate(Ljava/util/List;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .registers 3

    if-eqz p0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    new-instance v1, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decorate(Ljava/util/Set;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Set;Ljava/util/List;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .registers 3

    if-eqz p0, :cond_26

    if-eqz p1, :cond_1e

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_16

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_16

    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set and List must be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x1

    goto :goto_5

    :cond_23
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/ListOrderedSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public asList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/Iterator;Ljava/util/Collection;Lorg/apache/commons/collections/set/ListOrderedSet$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_34

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->collection:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    :cond_34
    :goto_34
    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
