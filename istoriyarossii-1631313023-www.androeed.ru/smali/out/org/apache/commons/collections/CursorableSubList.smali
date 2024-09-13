.class Lorg/apache/commons/collections/CursorableSubList;
.super Lorg/apache/commons/collections/CursorableLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;


# instance fields
.field protected _list:Lorg/apache/commons/collections/CursorableLinkedList;

.field protected _post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field protected _pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;II)V
    .registers 7

    invoke-direct {p0}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ltz p2, :cond_8f

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v1

    if-lt v1, p3, :cond_8f

    if-gt p2, p3, :cond_89

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v1

    if-ge p2, v1, :cond_3e

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v2, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-nez v1, :cond_31

    move-object v1, v0

    goto :goto_3b

    :cond_31
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_3b
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_48

    :cond_3e
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :goto_48
    if-ne p2, p3, :cond_66

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result p1

    if-ge p3, p1, :cond_63

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_7f

    :cond_63
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_7f

    :cond_66
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :goto_7f
    sub-int/2addr p3, p2

    iput p3, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iget p1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iput p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    return-void

    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_8f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addLast(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addLast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected checkForComod()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_14
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .registers 7

    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    if-nez p1, :cond_13

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_14

    :cond_13
    move-object v1, p1

    :goto_14
    if-nez p2, :cond_19

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_1a

    :cond_19
    move-object v2, p2

    :goto_1a
    invoke-virtual {v0, v1, v2, p3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_30
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_3d
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    if-ne p2, p1, :cond_4a

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_4a
    invoke-virtual {p0, p3}, Lorg/apache/commons/collections/CursorableSubList;->broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object p3
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_modCount:I

    iget v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_size:I

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_27

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_27

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_27
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_38

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_38
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_49

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_49
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableSubList;->broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
