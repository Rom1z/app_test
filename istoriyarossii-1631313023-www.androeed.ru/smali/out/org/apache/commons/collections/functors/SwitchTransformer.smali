.class public Lorg/apache/commons/collections/functors/SwitchTransformer;
.super Ljava/lang/Object;
.source "SwitchTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x58e1373f7c2edd14L


# instance fields
.field private final iDefault:Lorg/apache/commons/collections/Transformer;

.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;

.field private final iTransformers:[Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    iput-object p2, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    if-nez p3, :cond_b

    sget-object p3, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    :cond_b
    iput-object p3, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .registers 7

    if-eqz p0, :cond_4f

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1d

    if-nez v0, :cond_1c

    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    :cond_1c
    return-object v0

    :cond_1d
    new-array v2, v1, [Lorg/apache/commons/collections/Transformer;

    new-array v1, v1, [Lorg/apache/commons/collections/Predicate;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections/Predicate;

    aput-object v5, v1, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Transformer;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_49
    new-instance p0, Lorg/apache/commons/collections/functors/SwitchTransformer;

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/collections/functors/SwitchTransformer;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object p0

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The predicate and transformer map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Predicate;)V

    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_20

    array-length v0, p0

    if-nez v0, :cond_12

    if-nez p2, :cond_11

    sget-object p2, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    :cond_11
    return-object p2

    :cond_12
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Transformer;)[Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/functors/SwitchTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate and transformer arrays must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultTransformer()Lorg/apache/commons/collections/Transformer;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getTransformers()[Lorg/apache/commons/collections/Transformer;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
