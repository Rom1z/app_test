.class public abstract Lorg/apache/commons/collections/list/AbstractLinkedList;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    }
.end annotation


# instance fields
.field protected transient header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected transient modCount:I

.field protected transient size:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addLast(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addLast(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    iput-object p2, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    return-void
.end method

.method protected addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p2

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method public clear()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
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

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method protected createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>()V

    return-object v0
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSubListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_b

    :cond_19
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_38

    if-nez v4, :cond_3e

    goto :goto_1f

    :cond_38
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_3e
    return v2

    :cond_3f
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_d

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_d

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const-string v0, "Couldn\'t get the node: index ("

    if-ltz p1, :cond_6d

    if-nez p2, :cond_25

    iget p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-eq p1, p2, :cond_b

    goto :goto_25

    :cond_b
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ") is the size of the list."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_25
    :goto_25
    iget p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-gt p1, p2, :cond_44

    div-int/lit8 v0, p2, 0x2

    if-ge p1, v0, :cond_39

    iget-object p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object p2, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v0, 0x0

    :goto_32
    if-ge v0, p1, :cond_43

    iget-object p2, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_39
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :goto_3b
    if-le p2, p1, :cond_42

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 p2, p2, -0x1

    goto :goto_3b

    :cond_42
    move-object p2, v0

    :cond_43
    return-object p2

    :cond_44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ") greater than the size of the "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "list ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6d
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ") less than zero."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v1, v2

    goto :goto_5

    :cond_1b
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v2, :cond_19

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_5

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method protected init()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_e

    if-nez p1, :cond_5

    goto :goto_c

    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    :goto_c
    const/4 p1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x1

    :goto_f
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :goto_6
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1a

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :cond_2
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_17

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

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

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_5

    :cond_1a
    return v1
.end method

.method protected removeAllNodes()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_10

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-object v1

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_10

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-object v1

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .registers 4

    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

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
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-ge v0, v1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_17
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :goto_1c
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_2b

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2b
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-le v0, v1, :cond_33

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_33
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "[]"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    :cond_21
    :goto_21
    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2b

    const-string v2, "(this Collection)"

    :cond_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_3a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method
