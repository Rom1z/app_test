.class Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/SetUniqueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetListIterator"
.end annotation


# instance fields
.field protected last:Ljava/lang/Object;

.field protected final set:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;->set:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    return-void
.end method
