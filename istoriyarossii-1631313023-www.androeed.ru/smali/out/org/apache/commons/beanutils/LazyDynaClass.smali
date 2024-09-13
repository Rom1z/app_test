.class public Lorg/apache/commons/beanutils/LazyDynaClass;
.super Lorg/apache/commons/beanutils/BasicDynaClass;
.source "LazyDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/MutableDynaClass;


# instance fields
.field protected restricted:Z

.field protected returnNull:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/BasicDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .registers 4

    const-class v0, Lorg/apache/commons/beanutils/LazyDynaBean;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

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

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Ljava/lang/String;)V

    goto :goto_e

    :cond_6
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    :goto_e
    return-void
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
    .registers 6

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DynaClass is currently restricted. No new properties can be added."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .registers 4

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/DynaProperty;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isReturnNull()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    :cond_1d
    return-object v0

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDynaProperty(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_e

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    :goto_d
    return p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRestricted()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->restricted:Z

    return v0
.end method

.method public isReturnNull()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    array-length v4, v0

    if-ge v2, v4, :cond_34

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    aget-object v4, v0, v2

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_34
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DynaClass is currently restricted. No properties can be removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRestricted(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->restricted:Z

    return-void
.end method

.method public setReturnNull(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return-void
.end method
