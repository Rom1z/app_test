.class public final Lorg/apache/commons/collections/map/UnmodifiableEntrySet;
.super Lorg/apache/commons/collections/set/AbstractSetDecorator;
.source "UnmodifiableEntrySet.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;,
        Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static decorate(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    new-instance v2, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_16

    :cond_15
    move-object v0, p1

    :goto_16
    iget-object v2, p0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->collection:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1d
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    new-instance v3, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v4, v0, v2

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2e
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_33

    return-object v0

    :cond_33
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3f

    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3f
    return-object p1
.end method
