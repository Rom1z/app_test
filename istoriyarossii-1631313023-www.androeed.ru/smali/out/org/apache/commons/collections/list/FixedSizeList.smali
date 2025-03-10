.class public Lorg/apache/commons/collections/list/FixedSizeList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "FixedSizeList.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/FixedSizeList$FixedSizeListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1ec7f4f4c49e3affL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static decorate(Ljava/util/List;)Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/list/FixedSizeList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/list/FixedSizeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "List is fixed size"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "List is fixed size"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isFull()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/FixedSizeList$FixedSizeListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/list/FixedSizeList$FixedSizeListIterator;-><init>(Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/FixedSizeList$FixedSizeListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/list/FixedSizeList$FixedSizeListIterator;-><init>(Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public maxSize()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->size()I

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/list/FixedSizeList;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections/list/FixedSizeList;-><init>(Ljava/util/List;)V

    return-object p2
.end method
