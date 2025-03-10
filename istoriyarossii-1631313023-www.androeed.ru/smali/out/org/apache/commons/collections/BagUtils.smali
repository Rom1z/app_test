.class public Lorg/apache/commons/collections/BagUtils;
.super Ljava/lang/Object;
.source "BagUtils.java"


# static fields
.field public static final EMPTY_BAG:Lorg/apache/commons/collections/Bag;

.field public static final EMPTY_SORTED_BAG:Lorg/apache/commons/collections/Bag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/bag/UnmodifiableBag;->decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/BagUtils;->EMPTY_BAG:Lorg/apache/commons/collections/Bag;

    new-instance v0, Lorg/apache/commons/collections/bag/TreeBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/bag/TreeBag;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/bag/UnmodifiableSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/BagUtils;->EMPTY_SORTED_BAG:Lorg/apache/commons/collections/Bag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static predicatedBag(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Bag;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/PredicatedBag;->decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedSortedBag(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/SortedBag;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/SortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedBag(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedBag(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static transformedBag(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Bag;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TransformedBag;->decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static transformedSortedBag(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/SortedBag;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TransformedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/SortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static typedBag(Lorg/apache/commons/collections/Bag;Ljava/lang/Class;)Lorg/apache/commons/collections/Bag;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TypedBag;->decorate(Lorg/apache/commons/collections/Bag;Ljava/lang/Class;)Lorg/apache/commons/collections/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static typedSortedBag(Lorg/apache/commons/collections/SortedBag;Ljava/lang/Class;)Lorg/apache/commons/collections/SortedBag;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TypedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;Ljava/lang/Class;)Lorg/apache/commons/collections/SortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableBag(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/bag/UnmodifiableBag;->decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableSortedBag(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/bag/UnmodifiableSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;

    move-result-object p0

    return-object p0
.end method
