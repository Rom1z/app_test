.class public final Lorg/apache/commons/collections/functors/TransformedPredicate;
.super Ljava/lang/Object;
.source "TransformedPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4da94f0ac59e76baL


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;

.field private final iTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    iput-object p2, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    new-instance v0, Lorg/apache/commons/collections/functors/TransformedPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/TransformedPredicate;-><init>(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate to call must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The transformer to call must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method
