.class public final Lorg/apache/commons/collections/functors/EqualPredicate;
.super Ljava/lang/Object;
.source "EqualPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4e2f2937b0cc6c91L


# instance fields
.field private final iValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .registers 2

    if-nez p0, :cond_5

    sget-object p0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/functors/EqualPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/EqualPredicate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
