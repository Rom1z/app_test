.class final Landroidx/databinding/ListChangeRegistry$1;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ListChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ObservableList;",
        "Landroidx/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p3, v0, :cond_22

    const/4 v0, 0x3

    if-eq p3, v0, :cond_18

    const/4 v0, 0x4

    if-eq p3, v0, :cond_10

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onChanged(Landroidx/databinding/ObservableList;)V

    goto :goto_31

    :cond_10
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V

    goto :goto_31

    :cond_18
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->to:I

    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, v0, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeMoved(Landroidx/databinding/ObservableList;III)V

    goto :goto_31

    :cond_22
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeInserted(Landroidx/databinding/ObservableList;II)V

    goto :goto_31

    :cond_2a
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeChanged(Landroidx/databinding/ObservableList;II)V

    :goto_31
    return-void
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    check-cast p1, Landroidx/databinding/ObservableList$OnListChangedCallback;

    check-cast p2, Landroidx/databinding/ObservableList;

    check-cast p4, Landroidx/databinding/ListChangeRegistry$ListChanges;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ListChangeRegistry$1;->onNotifyCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    return-void
.end method
