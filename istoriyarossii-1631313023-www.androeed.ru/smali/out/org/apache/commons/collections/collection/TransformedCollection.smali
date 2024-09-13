.class public Lorg/apache/commons/collections/collection/TransformedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "TransformedCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x78a140f7a4730e9aL


# instance fields
.field protected final transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transformer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/collection/TransformedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/TransformedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/TransformedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected transform(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method
