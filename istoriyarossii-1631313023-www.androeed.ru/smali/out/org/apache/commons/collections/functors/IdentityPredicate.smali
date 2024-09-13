.class public final Lorg/apache/commons/collections/functors/IdentityPredicate;
.super Ljava/lang/Object;
.source "IdentityPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13f65150348d79dL


# instance fields
.field private final iValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .registers 2

    if-nez p0, :cond_5

    sget-object p0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/functors/IdentityPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/IdentityPredicate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
