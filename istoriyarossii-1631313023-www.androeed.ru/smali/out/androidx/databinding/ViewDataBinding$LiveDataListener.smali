.class Landroidx/databinding/ViewDataBinding$LiveDataListener;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroidx/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveDataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;",
        "Landroidx/databinding/ViewDataBinding$ObservableReference<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final mListener:Landroidx/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$WeakListener<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/lifecycle/LiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->addListener(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public getListener()Landroidx/databinding/ViewDataBinding$WeakListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$WeakListener<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .registers 5

    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding$WeakListener;->getBinder()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    iget v0, v0, Landroidx/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    :cond_16
    return-void
.end method

.method public removeListener(Landroidx/lifecycle/LiveData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->removeListener(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_11

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_11
    if-eqz p1, :cond_16

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_16
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method
