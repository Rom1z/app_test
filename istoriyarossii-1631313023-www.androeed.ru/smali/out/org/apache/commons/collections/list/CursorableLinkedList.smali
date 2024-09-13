.class public Lorg/apache/commons/collections/list/CursorableLinkedList;
.super Lorg/apache/commons/collections/list/AbstractLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;,
        Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient cursors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method protected broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method protected broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/CursorableLinkedList$SubCursor;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    return-object v0
.end method

.method public cursor()Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    return-object v0
.end method

.method protected init()V
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected removeAllNodes()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->size()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_17
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    if-nez v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_26
    return-void
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method
