.class Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;
.super Ljava/lang/Object;
.source "FastHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastHashMap$CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionViewIterator"
.end annotation


# instance fields
.field private expected:Ljava/util/Map;

.field private iterator:Ljava/util/Iterator;

.field private lastReturned:Ljava/util/Map$Entry;

.field private final synthetic this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastHashMap$CollectionView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-static {p1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :cond_13
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_16
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v3}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v2}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/FastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    monitor-exit v0

    goto :goto_4f

    :cond_3f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_45

    throw v1

    :cond_48
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iput-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    :goto_4f
    return-void

    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
