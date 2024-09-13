.class Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetIterator"
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_b

    return v1

    :cond_b
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    goto :goto_28

    :cond_1e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :goto_28
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v2, :cond_31

    if-nez p1, :cond_38

    goto :goto_37

    :cond_31
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :goto_37
    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_25
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_25
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections/map/Flat3Map;->access$000(Lorg/apache/commons/collections/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_16
    if-nez v2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1d
    xor-int/2addr v0, v1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    return-object p0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    goto :goto_25

    :cond_14
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_1a
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_20
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    return-object v0

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v0, ""

    return-object v0
.end method
