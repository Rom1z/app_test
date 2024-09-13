.class public abstract Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;
.super Lorg/apache/commons/collections/set/AbstractSetDecorator;
.source "AbstractSortedSetDecorator.java"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
