.class Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;
.super Ljava/util/AbstractSet;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeySetView"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView$1;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView$1;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method
