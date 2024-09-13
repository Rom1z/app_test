.class Lorg/apache/commons/collections/list/TreeList$TreeListIterator;
.super Ljava/lang/Object;
.source "TreeList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeListIterator"
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field protected currentIndex:I

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections/list/TreeList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/TreeList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$300(Lorg/apache/commons/collections/list/TreeList;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    goto :goto_1b

    :cond_13
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    :goto_1b
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput p2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/list/TreeList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    return-void
.end method

.method protected checkModCount()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$500(Lorg/apache/commons/collections/list/TreeList;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iput v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->next()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0

    :cond_34
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

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

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_24

    :cond_1e
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->previous()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :goto_24
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    return-object v0

    :cond_37
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Already at start of list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/list/TreeList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    if-eq v0, v2, :cond_17

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    return-void

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
