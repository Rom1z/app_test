.class public Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "EmptyRecyclerView.java"


# instance fields
.field mEmptyView:Landroid/view/View;

.field final observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;-><init>(Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;-><init>(Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;-><init>(Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method


# virtual methods
.method checkIfEmpty()V
    .registers 3

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_11

    const/16 v1, 0x8

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_b
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_15
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method
