.class public Lorg/apache/commons/collections/buffer/TransformedBuffer;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = -0x6da650b15e174a41L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Buffer;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/buffer/TransformedBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/buffer/TransformedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/TransformedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Lorg/apache/commons/collections/Buffer;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/TransformedBuffer;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/Buffer;

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/TransformedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
