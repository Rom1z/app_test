.class public Lorg/apache/commons/collections/iterators/TransformIterator;
.super Ljava/lang/Object;
.source "TransformIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/TransformIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public setTransformer(Lorg/apache/commons/collections/Transformer;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_8
    return-object p1
.end method
