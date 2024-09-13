.class public Lorg/apache/commons/collections/functors/IfClosure;
.super Ljava/lang/Object;
.source "IfClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iFalseClosure:Lorg/apache/commons/collections/Closure;

.field private final iPredicate:Lorg/apache/commons/collections/Predicate;

.field private final iTrueClosure:Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)V
    .registers 4

    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/functors/IfClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    iput-object p2, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    iput-object p3, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .registers 3

    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .registers 4

    if-eqz p0, :cond_14

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    new-instance v0, Lorg/apache/commons/collections/functors/IfClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/IfClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-object v0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Closures must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_14

    :cond_f
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    :goto_14
    return-void
.end method

.method public getFalseClosure()Lorg/apache/commons/collections/Closure;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getTrueClosure()Lorg/apache/commons/collections/Closure;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method
