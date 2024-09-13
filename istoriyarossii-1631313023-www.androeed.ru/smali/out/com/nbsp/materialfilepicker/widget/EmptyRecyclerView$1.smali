.class Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "EmptyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;


# direct methods
.method constructor <init>(Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;->this$0:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView$1;->this$0:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method
