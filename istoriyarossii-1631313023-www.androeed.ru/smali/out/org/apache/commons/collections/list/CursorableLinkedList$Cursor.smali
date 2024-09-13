.class public Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.source "CursorableLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation


# instance fields
.field currentRemovedByAnother:Z

.field nextIndexValid:Z

.field valid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected checkModCount()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cursor closed"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    :cond_e
    return-void
.end method

.method public nextIndex()I
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_27

    :cond_15
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :goto_1c
    iget-object v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_25

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_1c

    :cond_25
    iput v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    :goto_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    :cond_2a
    iget v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    return v0
.end method

.method protected nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 2

    return-void
.end method

.method protected nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_9

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_15

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_12

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_15

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    :goto_15
    return-void
.end method

.method protected nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_13

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-boolean v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_31

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1f

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-boolean v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_31

    :cond_1f
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_2d

    iput-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-boolean v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    iget p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_31

    :cond_2d
    iput-boolean v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    iput-boolean v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    :goto_31
    return-void
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    if-eqz v0, :cond_9

    goto :goto_15

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void
.end method
