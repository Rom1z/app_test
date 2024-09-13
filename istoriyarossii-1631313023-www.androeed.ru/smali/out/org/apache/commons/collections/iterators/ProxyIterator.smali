.class public Lorg/apache/commons/collections/iterators/ProxyIterator;
.super Ljava/lang/Object;
.source "ProxyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ProxyIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method
