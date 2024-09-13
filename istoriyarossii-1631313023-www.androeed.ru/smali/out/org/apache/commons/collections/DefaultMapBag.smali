.class public abstract Lorg/apache/commons/collections/DefaultMapBag;
.super Ljava/lang/Object;
.source "DefaultMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/DefaultMapBag$BagIterator;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/Map;

.field private _mods:I

.field private _total:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/DefaultMapBag;)I
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->modCount()I

    move-result p0

    return p0
.end method

.method private extractList()Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    :goto_1b
    if-lez v3, :cond_d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    :cond_23
    return-object v0
.end method

.method private modCount()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Object;I)Z
    .registers 8

    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v0, 0x0

    if-lez p2, :cond_22

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    if-ne v2, p2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    :cond_22
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_5

    :cond_18
    const/4 v1, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method protected calcTotalSize()I
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return v0
.end method

.method public clear()V
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/Bag;)Z
    .registers 8

    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_9
    const/4 v2, 0x1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    if-lt v4, v3, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v2, :cond_27

    if-eqz v3, :cond_27

    goto :goto_9

    :cond_27
    const/4 v2, 0x0

    goto :goto_a

    :cond_29
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/apache/commons/collections/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/apache/commons/collections/Bag;

    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_21

    return v2

    :cond_36
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method protected getMap()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;-><init>(Lorg/apache/commons/collections/DefaultMapBag;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .registers 7

    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    if-gtz p2, :cond_f

    const/4 v1, 0x0

    goto :goto_31

    :cond_f
    if-le v0, p2, :cond_22

    iget-object v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    sub-int/2addr v0, p2

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    goto :goto_31

    :cond_22
    iget-object p2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iget p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    :goto_31
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v1, :cond_1b

    if-eqz v2, :cond_7

    :cond_1b
    const/4 v1, 0x1

    goto :goto_8

    :cond_1d
    move v0, v1

    :cond_1e
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/Bag;)Z
    .registers 8

    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/HashBag;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v5, v4, :cond_29

    if-gt v4, v3, :cond_29

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_d

    :cond_29
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_d

    :cond_2d
    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    return p1
.end method

.method protected setMap(Ljava/util/Map;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The map must be non-null and empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_37
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
