.class Lorg/apache/commons/collections/DefaultMapBag$BagIterator;
.super Ljava/lang/Object;
.source "DefaultMapBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/DefaultMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BagIterator"
.end annotation


# instance fields
.field private _current:Ljava/lang/Object;

.field private _mods:I

.field private _parent:Lorg/apache/commons/collections/DefaultMapBag;

.field private _support:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/DefaultMapBag;Ljava/util/Iterator;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    iput-object p1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    iput-object p2, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/commons/collections/DefaultMapBag;->access$000(Lorg/apache/commons/collections/DefaultMapBag;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections/DefaultMapBag;->access$000(Lorg/apache/commons/collections/DefaultMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections/DefaultMapBag;->access$000(Lorg/apache/commons/collections/DefaultMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    iget-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    return-void

    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
