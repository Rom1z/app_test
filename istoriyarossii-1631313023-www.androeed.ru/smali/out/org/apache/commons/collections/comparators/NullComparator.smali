.class public Lorg/apache/commons/collections/comparators/NullComparator;
.super Ljava/lang/Object;
.source "NullComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50c789d15007a6d3L


# instance fields
.field private nonNullComparator:Ljava/util/Comparator;

.field private nullsAreHigh:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    iput-boolean p2, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    const-string p2, "null nonNullComparator"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0

    :cond_f
    if-nez p2, :cond_17

    iget-boolean p1, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz p1, :cond_16

    const/4 v0, -0x1

    :cond_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    check-cast p1, Lorg/apache/commons/collections/comparators/NullComparator;

    iget-boolean v2, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    iget-boolean v3, p1, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-ne v2, v3, :cond_2a

    iget-object v2, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    iget-object p1, p1, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-interface {v2, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
