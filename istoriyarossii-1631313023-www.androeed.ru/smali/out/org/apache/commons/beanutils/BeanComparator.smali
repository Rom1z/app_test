.class public Lorg/apache/commons/beanutils/BeanComparator;
.super Ljava/lang/Object;
.source "BeanComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/BeanComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BeanComparator;-><init>(Ljava/lang/String;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanComparator;->setProperty(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    goto :goto_11

    :cond_b
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    :goto_11
    return-void
.end method

.method private internalCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanComparator;->internalCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_9
    :try_start_9
    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanComparator;->internalCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_17} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_17} :catch_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_17} :catch_18

    return p1

    :catch_18
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSuchMethodException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_34
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvocationTargetException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_50
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalAccessException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/apache/commons/beanutils/BeanComparator;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/apache/commons/beanutils/BeanComparator;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    iget-object v3, p1, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, v3}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object p1, p1, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    return v2

    :cond_24
    return v0

    :cond_25
    iget-object p1, p1, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    if-nez p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    return-void
.end method
