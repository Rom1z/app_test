.class public Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedListIterator"
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections/list/AbstractLinkedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    return-void
.end method

.method protected checkModCount()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasPrevious()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-object v0

    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-object v0

    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Already at start of list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_17

    iget-object v0, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_26

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    :goto_26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method
