.class Lorg/apache/commons/collections/CursorableLinkedList$ListIter;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListIter"
.end annotation


# instance fields
.field _cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field _expectedModCount:I

.field _lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field _nextIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    if-nez p2, :cond_23

    new-instance p2, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object p1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-direct {p2, v0, p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_4a

    :cond_23
    iget v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p2, v1, :cond_39

    new-instance p2, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-direct {p2, v1, v0, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget p1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_4a

    :cond_39
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    :goto_4a
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    return-void
.end method

.method protected checkForComod()V
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public hasPrevious()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    return-object v0

    :cond_38
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    return v0

    :cond_10
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    return-object v0

    :cond_38
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, v2, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_16

    move-object v0, v3

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    :goto_1c
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, v2, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-ne v1, v2, :cond_2f

    move-object v1, v3

    goto :goto_35

    :cond_2f
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_35
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iput-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    return-void

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
