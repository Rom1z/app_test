.class public final Lorg/apache/commons/collections/StaticBucketMap;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/StaticBucketMap$Values;,
        Lorg/apache/commons/collections/StaticBucketMap$KeySet;,
        Lorg/apache/commons/collections/StaticBucketMap$EntrySet;,
        Lorg/apache/commons/collections/StaticBucketMap$KeyIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$Lock;,
        Lorg/apache/commons/collections/StaticBucketMap$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

.field private m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/StaticBucketMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_f

    add-int/lit8 p1, p1, -0x1

    :cond_f
    new-array v0, p1, [Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    new-array v0, p1, [Lorg/apache/commons/collections/StaticBucketMap$Lock;

    iput-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_27

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_9

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v0, v0, p2

    monitor-enter v0

    add-int/lit8 p2, p2, 0x1

    :try_start_10
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private final getHash(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 v0, p1, 0xf

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0xb

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v0, v0

    rem-int/2addr p1, v0

    if-gez p1, :cond_24

    mul-int/lit8 p1, p1, -0x1

    :cond_24
    return p1
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final clear()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    iput v0, v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v0, v2, v0

    :goto_d
    if-eqz v0, :cond_26

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_23

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_23

    :cond_20
    iget-object v0, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_d

    :cond_23
    :goto_23
    const/4 p1, 0x1

    monitor-exit v1

    return p1

    :cond_26
    monitor-exit v1

    const/4 p1, 0x0

    return p1

    :catchall_29
    move-exception p1

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v3, v3, v1

    :goto_10
    if-eqz v3, :cond_29

    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v4, p1, :cond_26

    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_23

    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_26

    :cond_23
    iget-object v3, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_10

    :cond_26
    :goto_26
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    :cond_29
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_2d
    move-exception p1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw p1

    :cond_30
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p1, p0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_d

    return v0

    :cond_d
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v0, v2, v0

    :goto_d
    if-eqz v0, :cond_27

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_23

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_23

    :cond_20
    iget-object v0, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_d

    :cond_23
    :goto_23
    iget-object p1, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :cond_27
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_2a
    move-exception p1

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final hashCode()I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v0

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v3, v3, v0

    :goto_10
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v3, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_10

    :cond_1a
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    return v1
.end method

.method public final isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_29

    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Node;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    iput-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v2, p1, v0

    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    monitor-exit v1

    return-object v3

    :cond_29
    move-object v4, v2

    :goto_2a
    if-eqz v2, :cond_49

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v4, p1, :cond_43

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_43

    :cond_3d
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    goto :goto_2a

    :cond_43
    :goto_43
    iget-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :cond_49
    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Node;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    iput-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    iput-object v2, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    monitor-exit v1

    return-object v3

    :catchall_60
    move-exception p1

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_9 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_f
    if-eqz v2, :cond_43

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_28

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_22

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_28

    :cond_22
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_f

    :cond_28
    :goto_28
    if-nez v4, :cond_31

    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v3, p1, v0

    goto :goto_35

    :cond_31
    iget-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object p1, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    :goto_35
    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget v0, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    iget-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :cond_43
    monitor-exit v1

    return-object v3

    :catchall_45
    move-exception p1

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public size()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method
