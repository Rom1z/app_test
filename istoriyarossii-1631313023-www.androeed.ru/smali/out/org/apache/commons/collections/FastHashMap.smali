.class public Lorg/apache/commons/collections/FastHashMap;
.super Ljava/util/HashMap;
.source "FastHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastHashMap$EntrySet;,
        Lorg/apache/commons/collections/FastHashMap$Values;,
        Lorg/apache/commons/collections/FastHashMap$KeySet;,
        Lorg/apache/commons/collections/FastHashMap$CollectionView;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_11

    monitor-enter p0

    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit p0

    goto :goto_1a

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    :goto_1a
    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_c

    new-instance v0, Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FastHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_18

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_f
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_20

    move-object v0, v1

    :goto_18
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastHashMap;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FastHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$EntrySet;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map;

    iget-boolean v1, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v1, :cond_56

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4a

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_49

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    :cond_49
    return v2

    :cond_4a
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    return v2

    :cond_55
    return v0

    :cond_56
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_59
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_67

    monitor-exit v1

    return v2

    :cond_67
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_95

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_93

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    :cond_93
    monitor-exit v1

    return v2

    :cond_95
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    monitor-exit v1

    return v2

    :cond_a1
    monitor-exit v1

    return v0

    :catchall_a3
    move-exception p1

    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_59 .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getFast()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    :cond_1f
    return v1

    :cond_20
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_23
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2d

    :cond_3d
    monitor-exit v0

    return v1

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public isEmpty()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FastHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$KeySet;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_17

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit p0

    goto :goto_20

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    :goto_20
    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public setFast(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    return-void
.end method

.method public size()I
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FastHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$Values;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method
