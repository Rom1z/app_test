.class public Lorg/apache/commons/collections/list/PredicatedList;
.super Lorg/apache/commons/collections/collection/PredicatedCollection;
.source "PredicatedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4f68c45b8354d91eL


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)Ljava/util/List;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/PredicatedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/PredicatedList;->validate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/list/PredicatedList;->validate(Ljava/lang/Object;)V

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getList()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/PredicatedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;-><init>(Lorg/apache/commons/collections/list/PredicatedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/PredicatedList;->validate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/list/PredicatedList;

    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V

    return-object p2
.end method
