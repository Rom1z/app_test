.class public final Lorg/apache/commons/collections/functors/OnePredicate;
.super Ljava/lang/Object;
.source "OnePredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x70c32e53becc8a39L


# instance fields
.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/OnePredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/collections/functors/OnePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/OnePredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Predicate;)V

    array-length v0, p0

    if-nez v0, :cond_9

    sget-object p0, Lorg/apache/commons/collections/functors/FalsePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object p0

    :cond_9
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_11
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/collections/functors/OnePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/OnePredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lorg/apache/commons/collections/functors/OnePredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v4, v3

    if-ge v1, v4, :cond_17

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v2, :cond_13

    return v0

    :cond_13
    const/4 v2, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    return v2
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/OnePredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method
