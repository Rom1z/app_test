.class public Lorg/apache/commons/collections/iterators/ListIteratorWrapper;
.super Ljava/lang/Object;
.source "ListIteratorWrapper.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# static fields
.field private static final UNSUPPORTED_OPERATION_MESSAGE:Ljava/lang/String; = "ListIteratorWrapper does not support optional operations of ListIterator."


# instance fields
.field private currentIndex:I

.field private final iterator:Ljava/util/Iterator;

.field private final list:Ljava/util/List;

.field private wrappedIteratorIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    const-string v0, "Iterator must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ge v0, v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    if-eqz v0, :cond_f

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
