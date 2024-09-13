.class Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;
.super Ljava/lang/Object;
.source "WeakFastHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionViewIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private expected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lastReturned:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    iget-object p1, p1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v1, v1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v1, v1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    invoke-virtual {v1, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v0, v0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v0, v0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    monitor-enter v0

    :try_start_14
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v3, v3, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v3}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v3

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v2, v2, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/beanutils/WeakFastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v1, v1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    monitor-exit v0

    goto :goto_4b

    :cond_3b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_41

    throw v1

    :cond_44
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iput-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    :goto_4b
    return-void

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
