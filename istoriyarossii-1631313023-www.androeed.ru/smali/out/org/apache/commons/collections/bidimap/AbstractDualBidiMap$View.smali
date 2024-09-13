.class public abstract Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "View"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->clear()V

    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_29

    :cond_10
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_14

    :cond_29
    :goto_29
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->clear()V

    return v2

    :cond_17
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_1b

    :cond_30
    return v1
.end method
