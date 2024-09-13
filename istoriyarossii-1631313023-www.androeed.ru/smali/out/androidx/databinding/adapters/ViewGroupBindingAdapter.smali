.class public Landroidx/databinding/adapters/ViewGroupBindingAdapter;
.super Ljava/lang/Object;
.source "ViewGroupBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;,
        Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;,
        Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;,
        Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;,
        Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAnimateLayoutChanges(Landroid/view/ViewGroup;Z)V
    .registers 2

    if-eqz p1, :cond_b

    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_f
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .registers 5

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-nez p3, :cond_b

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_13

    :cond_b
    new-instance v0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;

    invoke-direct {v0, p1, p2, p3}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;-><init>(Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_13
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V
    .registers 4

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_11

    :cond_9
    new-instance v0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$1;-><init>(Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :goto_11
    return-void
.end method
