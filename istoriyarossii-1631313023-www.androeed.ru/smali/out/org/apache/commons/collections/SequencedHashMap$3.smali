.class Lorg/apache/commons/collections/SequencedHashMap$3;
.super Ljava/util/AbstractSet;
.source "SequencedHashMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    return-void
.end method

.method private findEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$200(Lorg/apache/commons/collections/SequencedHashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    return-object v1

    :cond_24
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap$3;->findEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/commons/collections/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap$3;->findEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
