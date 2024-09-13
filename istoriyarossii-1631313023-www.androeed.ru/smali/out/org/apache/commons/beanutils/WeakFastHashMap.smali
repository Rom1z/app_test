.class Lorg/apache/commons/beanutils/WeakFastHashMap;
.super Ljava/util/HashMap;
.source "WeakFastHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;,
        Lorg/apache/commons/beanutils/WeakFastHashMap$Values;,
        Lorg/apache/commons/beanutils/WeakFastHashMap$KeySet;,
        Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private fast:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(IF)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lorg/apache/commons/beanutils/WeakFastHashMap;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_10

    monitor-enter p0

    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-exit p0

    goto :goto_19

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    :goto_19
    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_c

    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_18

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_f
    new-instance v1, Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_20

    move-object v0, v1

    :goto_18
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method protected cloneMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

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

.method protected createMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0
.end method

.method protected createMap(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1}, Ljava/util/WeakHashMap;-><init>(I)V

    return-object v0
.end method

.method protected createMap(IF)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/WeakHashMap;-><init>(IF)V

    return-object v0
.end method

.method protected createMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V

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

    iget-boolean v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v1, :cond_56

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v1

    :try_start_59
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_67

    monitor-exit v1

    return v2

    :cond_67
    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    :cond_21
    return v1

    :cond_22
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_25
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2f

    :cond_41
    monitor-exit v0

    return v1

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public isEmpty()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$KeySet;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_16

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1

    :cond_16
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_19
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_15

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-exit p0

    goto :goto_1e

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1

    :cond_15
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    :goto_1e
    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_16

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1

    :cond_16
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_19
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public setFast(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    return-void
.end method

.method public size()I
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$Values;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V

    return-object v0
.end method
