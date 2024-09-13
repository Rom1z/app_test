.class public Lorg/apache/commons/collections/CursorableLinkedList;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/CursorableLinkedList$Cursor;,
        Lorg/apache/commons/collections/CursorableLinkedList$ListIter;,
        Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient _cursors:Ljava/util/List;

.field protected transient _head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field protected transient _modCount:I

.field protected transient _size:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    :goto_1b
    if-ge v0, v1, :cond_27

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_27
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_e

    :cond_1c
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_8
    if-ltz p1, :cond_24

    if-gt p1, v0, :cond_24

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move-object p1, v1

    goto :goto_19

    :cond_15
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    :goto_19
    if-nez p1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_20
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :goto_23
    return-void

    :cond_24
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " < 0 or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-eq v0, p1, :cond_30

    if-nez v0, :cond_f

    goto :goto_30

    :cond_f
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    if-nez p1, :cond_17

    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    :goto_1b
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_1f

    :cond_2e
    const/4 p1, 0x1

    return p1

    :cond_30
    :goto_30
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_c

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 p1, 0x1

    return p1
.end method

.method public addLast(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 p1, 0x1

    return p1
.end method

.method protected broadcastListableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

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

    check-cast v1, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method protected broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

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

    check-cast v1, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method protected broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

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

    check-cast v1, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_11
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-eqz v0, :cond_2f

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v1, v2, :cond_2f

    if-nez p1, :cond_19

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    :cond_19
    if-eqz p1, :cond_27

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_7

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public cursor()Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v3, 0x0

    :goto_17
    if-eqz v1, :cond_4c

    iget-object v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v4

    if-eq v3, v4, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    goto :goto_4b

    :cond_34
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_17

    :cond_4b
    :goto_4b
    return v2

    :cond_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .registers 5

    if-ltz p1, :cond_2f

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ge p1, v0, :cond_2f

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_1b

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p1, :cond_1a

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v1, v1, -0x1

    :goto_25
    if-le v1, p1, :cond_2e

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :cond_2e
    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " < 0 or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_8
    if-eqz v0, :cond_2d

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_2d

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_24

    :cond_1c
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_8

    :cond_2d
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_25

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    :goto_a
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    if-eqz v0, :cond_4d

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq p1, v2, :cond_4d

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    goto :goto_a

    :cond_25
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    move-object v1, v0

    move-object v0, v2

    const/4 v2, 0x0

    :goto_2e
    if-eqz v0, :cond_4d

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v1, v3, :cond_4d

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    return v2

    :cond_43
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2e

    :cond_4d
    const/4 p1, -0x1

    return p1
.end method

.method protected insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .registers 5

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    if-eqz p1, :cond_17

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :goto_1c
    if-eqz p2, :cond_22

    invoke-virtual {p2, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_27

    :cond_22
    iget-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :goto_27
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object v0
.end method

.method protected invalidateCursors()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->invalidate()V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_24
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_28

    iget-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    :goto_d
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    if-eqz v1, :cond_4d

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq p1, v2, :cond_4d

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_21

    return v0

    :cond_21
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    goto :goto_d

    :cond_28
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    :goto_2e
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_4d

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_4d

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    return v0

    :cond_46
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    goto :goto_2e

    :cond_4d
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    if-ltz p1, :cond_c

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-gt p1, v0, :cond_c

    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " < 0 or > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

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
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-eqz v0, :cond_36

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v1, v2, :cond_36

    const/4 v1, 0x1

    if-nez p1, :cond_1e

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return v1

    :cond_1e
    if-eqz p1, :cond_2e

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return v1

    :cond_2e
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_7

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v0, :cond_c

    goto :goto_25

    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_10

    :cond_25
    :goto_25
    return v1
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_1d

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_1d
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_2e
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_3f

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_3f
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    :cond_50
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_5

    :cond_1a
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    return-object p2
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    if-ltz p1, :cond_13

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-gt p2, v0, :cond_13

    if-gt p1, p2, :cond_13

    if-nez p1, :cond_d

    if-ne p2, v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Lorg/apache/commons/collections/CursorableSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/CursorableSubList;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;II)V

    return-object v0

    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-eqz v1, :cond_27

    iget-object v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v4

    if-eq v3, v4, :cond_27

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    move v5, v3

    move-object v3, v1

    move-object v1, v2

    move v2, v5

    goto :goto_c

    :cond_27
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ge v0, v1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_17
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_20
    if-eqz v1, :cond_3b

    iget-object v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v4

    if-eq v3, v4, :cond_3b

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move v0, v3

    move-object v3, v5

    goto :goto_20

    :cond_3b
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-le v0, v1, :cond_42

    aput-object v2, p1, v1

    :cond_42
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v2, 0x0

    :goto_11
    if-eqz v1, :cond_37

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_37

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v2, v1, :cond_28

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_11

    :cond_37
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

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

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

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
