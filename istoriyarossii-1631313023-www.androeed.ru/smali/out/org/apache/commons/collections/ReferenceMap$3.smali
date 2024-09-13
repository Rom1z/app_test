.class Lorg/apache/commons/collections/ReferenceMap$3;
.super Ljava/util/AbstractCollection;
.source "ReferenceMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$ValueIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/ReferenceMap$ValueIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;Lorg/apache/commons/collections/ReferenceMap$1;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ReferenceMap$3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$3;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$3;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
