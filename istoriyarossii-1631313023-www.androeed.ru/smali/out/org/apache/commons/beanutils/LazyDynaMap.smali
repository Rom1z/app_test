.class public Lorg/apache/commons/beanutils/LazyDynaMap;
.super Lorg/apache/commons/beanutils/LazyDynaBean;
.source "LazyDynaMap.java"

# interfaces
.implements Lorg/apache/commons/beanutils/MutableDynaClass;


# instance fields
.field protected name:Ljava/lang/String;

.field protected restricted:Z

.field protected returnNull:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->returnNull:Z

    if-nez p1, :cond_a

    const-string p1, "LazyDynaMap"

    :cond_a
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->name:Ljava/lang/String;

    if-nez p2, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->newMap()Ljava/util/Map;

    move-result-object p2

    :cond_12
    iput-object p2, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    iput-object p0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .registers 5

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p2, :cond_14

    array-length p1, p2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_14

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaClass;)V
    .registers 3

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/beanutils/DynaProperty;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    if-nez p2, :cond_16

    const/4 p2, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaMap;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :goto_1a
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DynaClass is currently restricted. No new properties can be added."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Property name is missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "readable/writable properties not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected add(Lorg/apache/commons/beanutils/DynaProperty;)V
    .registers 3

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .registers 8

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/beanutils/DynaProperty;

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    new-instance v6, Lorg/apache/commons/beanutils/DynaProperty;

    if-nez v4, :cond_33

    const/4 v4, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_37
    invoke-direct {v6, v3, v4}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v6, v0, v2

    move v2, v5

    goto :goto_13

    :cond_3e
    return-object v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .registers 4

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isReturnNull()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_20
    new-instance v1, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected isDynaProperty(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRestricted()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->restricted:Z

    return v0
.end method

.method public isReturnNull()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->returnNull:Z

    return v0
.end method

.method public newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->newMap()Ljava/util/Map;

    move-result-object v0

    :goto_13
    new-instance v1, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_2a

    array-length v2, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2a
    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DynaClass is currently restricted. No properties can be removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2b

    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid property name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (DynaClass is restricted)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    return-void
.end method

.method public setRestricted(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->restricted:Z

    return-void
.end method

.method public setReturnNull(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->returnNull:Z

    return-void
.end method
