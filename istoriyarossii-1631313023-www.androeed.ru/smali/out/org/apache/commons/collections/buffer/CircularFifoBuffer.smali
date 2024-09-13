.class public Lorg/apache/commons/collections/buffer/CircularFifoBuffer;
.super Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;
.source "CircularFifoBuffer.java"


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/CircularFifoBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/CircularFifoBuffer;->remove()Ljava/lang/Object;

    :cond_9
    invoke-super {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
