.class public Lorg/apache/commons/collections/functors/ChainedClosure;
.super Ljava/lang/Object;
.source "ChainedClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Closure;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;
    .registers 5

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/Closure;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/Closure;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_16

    :cond_28
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    new-instance p0, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Closure collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .registers 4

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Closure;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Closures must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    array-length v0, p0

    if-nez v0, :cond_9

    sget-object p0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object p0

    :cond_9
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public getClosures()[Lorg/apache/commons/collections/Closure;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    return-object v0
.end method
