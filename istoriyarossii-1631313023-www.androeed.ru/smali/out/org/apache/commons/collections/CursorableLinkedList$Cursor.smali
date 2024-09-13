.class public Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections/CursorableLinkedList$ListIter;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cursor"
.end annotation


# instance fields
.field _valid:Z

.field private final synthetic this$0:Lorg/apache/commons/collections/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    invoke-virtual {p1, p0}, Lorg/apache/commons/collections/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->checkForComod()V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_nextIndex:I

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_expectedModCount:I

    return-void
.end method

.method protected checkForComod()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V

    :cond_c
    return-void
.end method

.method protected invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    return-void
.end method

.method protected listableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :cond_7
    return-void
.end method

.method protected listableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_27

    :cond_16
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_38
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_3f

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :cond_3f
    return-void
.end method

.method protected listableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_22

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_22

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_43

    :cond_32
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_43

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_49

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :cond_49
    return-void
.end method

.method public nextIndex()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
