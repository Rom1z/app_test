.class public Lorg/apache/commons/collections/comparators/FixedOrderComparator;
.super Ljava/lang/Object;
.source "FixedOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final UNKNOWN_AFTER:I = 0x1

.field public static final UNKNOWN_BEFORE:I = 0x0

.field public static final UNKNOWN_THROW_EXCEPTION:I = 0x2


# instance fields
.field private counter:I

.field private isLocked:Z

.field private final map:Ljava/util/Map;

.field private unknownObjectBehavior:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_26
    return-void

    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    if-eqz p1, :cond_20

    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    return-void

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    iget-object p1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " not known to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected checkLocked()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify a FixedOrderComparator after a comparison"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    iget-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    if-nez v2, :cond_18

    goto :goto_1d

    :cond_18
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_1d
    :goto_1d
    iget v3, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_63

    if-eq v3, v0, :cond_5c

    const/4 v0, 0x2

    if-ne v3, v0, :cond_43

    if-nez v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p1, p2

    :goto_2c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Attempting to compare unknown object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unknown unknownObjectBehavior: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    if-nez v1, :cond_62

    if-nez v2, :cond_61

    const/4 v0, 0x0

    :cond_61
    return v0

    :cond_62
    return v5

    :cond_63
    if-nez v1, :cond_6a

    if-nez v2, :cond_68

    goto :goto_69

    :cond_68
    const/4 v4, -0x1

    :goto_69
    return v4

    :cond_6a
    return v0
.end method

.method public getUnknownObjectBehavior()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return v0
.end method

.method public isLocked()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    return v0
.end method

.method public setUnknownObjectBehavior(I)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    if-eqz p1, :cond_14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognised value for unknown behaviour flag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    iput p1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return-void
.end method
