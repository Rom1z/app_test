.class public Lorg/apache/commons/collections/set/CompositeSet;
.super Lorg/apache/commons/collections/collection/CompositeCollection;
.source "CompositeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/set/CompositeSet$SetMutator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>([Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Collection;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->getCollections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lorg/apache/commons/collections/set/CompositeSet;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lorg/apache/commons/collections/set/CompositeSet;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    instance-of v3, v3, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lorg/apache/commons/collections/set/CompositeSet;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    check-cast v3, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;

    move-object v4, p1

    check-cast v4, Ljava/util/Set;

    invoke-interface {v3, p0, v1, v4, v2}, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;->resolveCollision(Lorg/apache/commons/collections/set/CompositeSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;)V

    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-gtz v1, :cond_42

    goto :goto_d

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempt to add illegal entry unresolved by SetMutator.resolveCollision()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Collision adding composited collection to a CompositeSet with a CollectionMutator instead of a SetMutator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Collision adding composited collection with no SetMutator set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_6d

    monitor-exit p0

    return-void

    :cond_65
    :try_start_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Collections added must implement java.util.Set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_23

    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Set;

    const/4 v1, 0x0

    check-cast p1, Ljava/util/Set;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    check-cast p2, Ljava/util/Set;

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited([Ljava/util/Collection;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must implement java.util.Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must implement java.util.Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addComposited([Ljava/util/Collection;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_e

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_18

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->size()I

    move-result v0

    if-ne p1, v0, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    add-int/2addr v2, v3

    goto :goto_6

    :cond_1a
    return v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->getCollections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V

    return-void
.end method
