.class public Lorg/apache/commons/collections/map/TypedMap;
.super Ljava/lang/Object;
.source "TypedMap.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/PredicatedMap;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
