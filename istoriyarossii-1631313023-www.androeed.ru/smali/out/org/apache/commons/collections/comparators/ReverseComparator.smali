.class public Lorg/apache/commons/collections/comparators/ReverseComparator;
.super Ljava/lang/Object;
.source "ReverseComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27acceccb201dd81L


# instance fields
.field private comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    goto :goto_e

    :cond_8
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    :goto_e
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    check-cast p1, Lorg/apache/commons/collections/comparators/ReverseComparator;

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    iget-object p1, p1, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xa730938

    xor-int/2addr v0, v1

    return v0
.end method
