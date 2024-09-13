.class public Lorg/apache/commons/collections/map/PredicatedMap;
.super Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.source "PredicatedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x66deecd99f9e25b4L


# instance fields
.field protected final keyPredicate:Lorg/apache/commons/collections/Predicate;

.field protected final valuePredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iput-object p3, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/apache/commons/collections/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_27
    return-void
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/PredicatedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set value - Predicate rejected it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isSetValueChecking()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/collections/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_20
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected validate(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add key - Predicate rejected it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iget-object p1, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    if-eqz p1, :cond_26

    invoke-interface {p1, p2}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add value - Predicate rejected it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    return-void
.end method
