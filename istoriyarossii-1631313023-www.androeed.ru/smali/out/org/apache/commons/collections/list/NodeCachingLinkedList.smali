.class public Lorg/apache/commons/collections/list/NodeCachingLinkedList;
.super Lorg/apache/commons/collections/list/AbstractLinkedList;
.source "NodeCachingLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_MAXIMUM_CACHE_SIZE:I = 0x14

.field private static final serialVersionUID:J = 0x5fb9deb63bbc3f09L


# instance fields
.field protected transient cacheSize:I

.field protected transient firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected maximumCacheSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>()V

    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    const/16 p1, 0x14

    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->isCacheFull()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    return-void
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getMaximumCacheSize()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    return v0
.end method

.method protected getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v2, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v2, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    return-object v0
.end method

.method protected isCacheFull()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected removeAllNodes()V
    .registers 5

    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->size:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    iget v2, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1b

    iget-object v3, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_10

    :cond_1b
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected setMaximumCacheSize(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

    return-void
.end method

.method protected shrinkCacheToMaximumSize()V
    .registers 3

    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-le v0, v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_a
    return-void
.end method
