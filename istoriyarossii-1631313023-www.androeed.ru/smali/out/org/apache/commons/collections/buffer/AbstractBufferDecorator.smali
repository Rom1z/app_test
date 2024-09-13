.class public abstract Lorg/apache/commons/collections/buffer/AbstractBufferDecorator;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractBufferDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/AbstractBufferDecorator;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Lorg/apache/commons/collections/Buffer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/AbstractBufferDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Buffer;

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/AbstractBufferDecorator;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
