.class Lorg/apache/commons/collections/ReferenceMap$Entry;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/commons/collections/ReferenceMap$Entry;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    iput-object p2, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    iput p3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    iput-object p4, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v2, :cond_31

    if-nez p1, :cond_1c

    goto :goto_31

    :cond_1c
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    :cond_31
    :goto_31
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    :goto_13
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    :goto_13
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e
    xor-int/2addr v0, v1

    return v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    if-eqz v1, :cond_4d

    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result p1

    if-lez p1, :cond_32

    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_32
    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result p1

    if-lez p1, :cond_42

    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_4d

    :cond_42
    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$600(Lorg/apache/commons/collections/ReferenceMap;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    :cond_4d
    :goto_4d
    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v1

    if-lez v1, :cond_13

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_13
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    invoke-static {v1, v2, p1, v3}, Lorg/apache/commons/collections/ReferenceMap;->access$500(Lorg/apache/commons/collections/ReferenceMap;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
