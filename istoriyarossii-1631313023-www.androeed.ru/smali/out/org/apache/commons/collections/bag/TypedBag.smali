.class public Lorg/apache/commons/collections/bag/TypedBag;
.super Ljava/lang/Object;
.source "TypedBag.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;Ljava/lang/Class;)Lorg/apache/commons/collections/Bag;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/bag/PredicatedBag;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/PredicatedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
