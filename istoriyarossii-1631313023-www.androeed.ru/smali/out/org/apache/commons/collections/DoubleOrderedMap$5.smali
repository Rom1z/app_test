.class Lorg/apache/commons/collections/DoubleOrderedMap$5;
.super Ljava/util/AbstractCollection;
.source "DoubleOrderedMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/commons/collections/DoubleOrderedMap$5;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$5$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$5$1;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$5;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result p1

    if-eq p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/DoubleOrderedMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_19
    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
