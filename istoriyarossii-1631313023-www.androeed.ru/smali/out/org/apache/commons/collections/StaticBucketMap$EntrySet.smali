.class Lorg/apache/commons/collections/StaticBucketMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/StaticBucketMap;->access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections/StaticBucketMap;->access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    move-result-object v1

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_15
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/StaticBucketMap;->access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_1d
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p1, 0x1

    monitor-exit v1

    return p1

    :cond_28
    iget-object v0, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_1d

    :cond_2b
    monitor-exit v1

    const/4 p1, 0x0

    return p1

    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/StaticBucketMap;->access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/StaticBucketMap;->access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    move-result-object v2

    aget-object v2, v2, v0

    monitor-enter v2

    :try_start_1b
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/StaticBucketMap;->access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-result-object v3

    aget-object v0, v3, v0

    :goto_23
    if-eqz v0, :cond_3a

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit v2

    return p1

    :cond_37
    iget-object v0, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_23

    :cond_3a
    monitor-exit v2

    return v1

    :catchall_3c
    move-exception p1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
