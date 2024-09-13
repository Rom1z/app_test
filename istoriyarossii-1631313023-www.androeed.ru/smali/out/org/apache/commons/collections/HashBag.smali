.class public Lorg/apache/commons/collections/HashBag;
.super Lorg/apache/commons/collections/DefaultMapBag;
.source "HashBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/HashBag;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/HashBag;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
