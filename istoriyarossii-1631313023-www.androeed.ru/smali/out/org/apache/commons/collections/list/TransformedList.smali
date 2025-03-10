.class public Lorg/apache/commons/collections/list/TransformedList;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xef2f55badb36155L


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/TransformedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/TransformedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;-><init>(Lorg/apache/commons/collections/list/TransformedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/TransformedList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/list/TransformedList;

    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V

    return-object p2
.end method
