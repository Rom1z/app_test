.class public Lorg/apache/commons/collections/FastArrayList;
.super Ljava/util/ArrayList;
.source "FastArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastArrayList$ListIter;,
        Lorg/apache/commons/collections/FastArrayList$SubList;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_17

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    goto :goto_20

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

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

.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public clear()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_17

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    goto :goto_20

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    :goto_20
    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_c

    new-instance v0, Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_18

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_f
    new-instance v1, Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_20

    move-object v0, v1

    :goto_18
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastArrayList;->setFast(Z)V

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

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

.method public ensureCapacity(I)V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_17

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    goto :goto_20

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

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

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/List;

    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_33

    if-nez v4, :cond_39

    goto :goto_1a

    :cond_33
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_39
    return v2

    :cond_3a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    return v0

    :cond_49
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4c
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_56
    :goto_56
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_6f

    if-nez v5, :cond_75

    goto :goto_56

    :cond_6f
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    :cond_75
    monitor-exit v1

    return v2

    :cond_77
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_84

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_84

    goto :goto_85

    :cond_84
    const/4 v0, 0x0

    :goto_85
    monitor-exit v1

    return v0

    :catchall_87
    move-exception p1

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_4c .. :try_end_89} :catchall_87

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x1f

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_20
    add-int/2addr v2, v3

    goto :goto_c

    :cond_22
    return v2

    :cond_23
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_26
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v2, v2, 0x1f

    if-nez v4, :cond_3c

    const/4 v4, 0x0

    goto :goto_40

    :cond_3c
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_40
    add-int/2addr v2, v4

    goto :goto_2c

    :cond_42
    monitor-exit v0

    return v2

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

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

.method public isEmpty()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

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

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

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

.method public listIterator()Ljava/util/ListIterator;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_a

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

.method public setFast(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    return-void
.end method

.method public size()I
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

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

.method public subList(II)Ljava/util/List;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_a

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/FastArrayList$SubList;-><init>(Lorg/apache/commons/collections/FastArrayList;II)V

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FastArrayList["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_17

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0

    goto :goto_20

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    monitor-exit v0

    :goto_20
    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v1
.end method
