.class Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;
.super Ljava/util/AbstractSet;
.source "SingletonMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonValues"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3333d3346cc302c0L


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/SingletonMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/SingletonMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/iterators/SingletonIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/iterators/SingletonIterator;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
