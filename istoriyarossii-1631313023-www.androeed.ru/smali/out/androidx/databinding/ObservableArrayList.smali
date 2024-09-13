.class public Landroidx/databinding/ObservableArrayList;
.super Ljava/util/ArrayList;
.source "ObservableArrayList.java"

# interfaces
.implements Landroidx/databinding/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;",
        "Landroidx/databinding/ObservableList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroidx/databinding/ListChangeRegistry;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/databinding/ListChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry;-><init>()V

    iput-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    return-void
.end method

.method private notifyAdd(II)V
    .registers 4

    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/ListChangeRegistry;->notifyInserted(Landroidx/databinding/ObservableList;II)V

    :cond_7
    return-void
.end method

.method private notifyRemove(II)V
    .registers 4

    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/ListChangeRegistry;->notifyRemoved(Landroidx/databinding/ObservableList;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    :cond_d
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    :cond_12
    return p1
.end method

.method public addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
    .registers 3

    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/databinding/ListChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry;-><init>()V

    iput-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    :cond_b
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/ListChangeRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v0

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    :cond_d
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
    .registers 3

    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/databinding/ListChangeRegistry;->remove(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method protected removeRange(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    sub-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/databinding/ListChangeRegistry;->notifyChanged(Landroidx/databinding/ObservableList;II)V

    :cond_c
    return-object p2
.end method
