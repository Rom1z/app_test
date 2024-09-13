.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;
.super Ljava/util/AbstractSet;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "View"
.end annotation


# instance fields
.field protected final dataType:I

.field protected final main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

.field protected final orderType:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iput p2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->orderType:I

    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1300(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    check-cast p1, Ljava/lang/Comparable;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->orderType:I

    iget v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    check-cast p1, Ljava/lang/Comparable;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1500(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->size()I

    move-result v0

    return v0
.end method
