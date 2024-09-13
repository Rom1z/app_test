.class public Lorg/apache/commons/collections/comparators/ComparableComparator;
.super Ljava/lang/Object;
.source "ComparableComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final instance:Lorg/apache/commons/collections/comparators/ComparableComparator;

.field private static final serialVersionUID:J = -0x40b66da47914ec9L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/comparators/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/commons/collections/comparators/ComparableComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/comparators/ComparableComparator;->instance:Lorg/apache/commons/collections/comparators/ComparableComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/comparators/ComparableComparator;->instance:Lorg/apache/commons/collections/comparators/ComparableComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public hashCode()I
    .registers 2

    const v0, 0x697b9d70

    return v0
.end method
