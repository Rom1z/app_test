.class public Lorg/apache/commons/collections/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;

.field private static INTEGER_ONE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/collections/CollectionUtils;->INTEGER_ONE:Ljava/lang/Integer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)V
    .registers 3

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)V
    .registers 3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    return-void
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    :goto_8
    return p0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_9

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/apache/commons/collections/Bag;

    invoke-interface {p1, p0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_14
    const/4 v0, 0x0

    if-nez p0, :cond_2a

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_41
    return v0
.end method

.method public static collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v0
.end method

.method public static collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p2
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v0
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    return-object p2
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_20

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v2

    :cond_20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public static countMatches(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return v0
.end method

.method public static disjunction(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    invoke-static {p1, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p1, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {p1, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v5

    :goto_3d
    if-ge v3, v4, :cond_19

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_45
    return-object v0
.end method

.method public static exists(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Z
    .registers 3

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static filter(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V
    .registers 3

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public static find(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forAllDo(Ljava/util/Collection;Lorg/apache/commons/collections/Closure;)V
    .registers 3

    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_8

    :cond_16
    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    if-ltz p1, :cond_c7

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_20

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_20
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2b

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_2b
    instance-of v0, p0, Ljava/util/Iterator;

    const-string v1, "Entry does not exist: "

    const/4 v2, -0x1

    if-eqz v0, :cond_5c

    check-cast p0, Ljava/util/Iterator;

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v2, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_34

    :cond_47
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6b

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6b
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_99

    check-cast p0, Ljava/util/Enumeration;

    :goto_71
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_84

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v2, :cond_80

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_80
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_71

    :cond_84
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    if-eqz p0, :cond_bf

    :try_start_9b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_9f} :catch_a0

    return-object p0

    :catch_a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unsupported object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported object type: null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_23

    sget-object v2, Lorg/apache/commons/collections/CollectionUtils;->INTEGER_ONE:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_23
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_32
    return-object v0
.end method

.method private static final getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .registers 2

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static index(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_12

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_1e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1f

    :cond_1e
    const/4 p1, -0x1

    :goto_1f
    if-gez p1, :cond_22

    return-object p0

    :cond_22
    if-eqz v0, :cond_33

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_33
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3e

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3e
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_49

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_49
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_62

    move-object v0, p0

    check-cast v0, Ljava/util/Enumeration;

    :goto_50
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7b

    add-int/2addr p1, v2

    if-ne p1, v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5e
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_50

    :cond_62
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_6d

    check-cast p0, Ljava/util/Iterator;

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6d
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7b

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    :cond_7b
    return-object p0
.end method

.method private static index(Ljava/util/Iterator;I)Ljava/lang/Object;
    .registers 3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_13
    return-object p0
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    invoke-static {p1, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_30
    if-ge v3, v4, :cond_19

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_38
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_1f

    return v2

    :cond_1f
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v3

    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v1

    if-eq v3, v1, :cond_27

    return v2

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public static isFull(Ljava/util/Collection;)Z
    .registers 2

    const-string v0, "The collection must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v0, :cond_10

    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {p0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result p0

    return p0

    :cond_10
    :try_start_10
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_18} :catch_19

    return p0

    :catch_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 4

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v1

    if-le v2, v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public static maxSize(Ljava/util/Collection;)I
    .registers 2

    const-string v0, "The collection must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v0, :cond_10

    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {p0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result p0

    return p0

    :cond_10
    :try_start_10
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_18} :catch_19

    return p0

    :catch_19
    const/4 p0, -0x1

    return p0
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static reverseArray([Ljava/lang/Object;)V
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_4
    if-le v0, v1, :cond_13

    aget-object v2, p0, v0

    aget-object v3, p0, v1

    aput-object v3, p0, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V
    .registers 5

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V
    .registers 5

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public static size(Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_4d

    :cond_b
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_4d

    :cond_16
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_20

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    goto :goto_4d

    :cond_20
    instance-of v0, p0, Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast p0, Ljava/util/Iterator;

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_27

    :cond_33
    move p0, v1

    goto :goto_4d

    :cond_35
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_47

    check-cast p0, Ljava/util/Enumeration;

    :goto_3b
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_33

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_3b

    :cond_47
    if-eqz p0, :cond_6d

    :try_start_49
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_4d} :catch_4e

    :goto_4d
    return p0

    :catch_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported object type: null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :cond_16
    instance-of v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-nez p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    :cond_25
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_31

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_31
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_3d

    check-cast p0, Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3d
    if-eqz p0, :cond_66

    :try_start_3f
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_43} :catch_47

    if-nez p0, :cond_46

    const/4 v1, 0x1

    :cond_46
    return v1

    :catch_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported object type: null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/collection/SynchronizedCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_20

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_e

    :cond_20
    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    return-void
.end method

.method public static transformedCollection(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static typedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/TypedCollection;->decorate(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    invoke-static {p1, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_30
    if-ge v3, v4, :cond_19

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_38
    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
