.class public Lorg/apache/commons/collections/bag/HashBag;
.super Lorg/apache/commons/collections/bag/AbstractMapBag;
.source "HashBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5b0dc3ba0157ee9dL


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/HashBag;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-super {p0, v0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
